from fastapi import APIRouter, Depends, HTTPException
from src.models import (
                        database, book_table, 
                        book_franchise_table, book_genre_table
                        )
                        
from src.types import CreateBook, TableOfContent, UpdateBook, Book
from typing import List , Optional
from src.dependencies import get_current_user
router = APIRouter()


@router.get('/')
async def books():
    query = book_table.select()
    return await database.fetch_all(query)

@router.get('/{book_id}', response_model=Book)
async def get_a_book(book_id: int):
    query = book_table.select().where(book_table.c.id == book_id).order_by(book_table.c.name)
    return await database.fetch_one(query)

async def valid_genres(book_genres: List[int]) -> bool:
    all_genres = set(list(map(lambda x: x['id'], await database.fetch_all(book_genre_table.select()))))
    genres_not_in_db = set(book_genres).difference(all_genres)
    are_book_genres_in_all_genres_list = len(genres_not_in_db) == 0
    if are_book_genres_in_all_genres_list:
        return True, []
    return False, list(genres_not_in_db)

@router.post('/', response_model=Book)
async def create_book(create_book: CreateBook, _ = Depends(get_current_user)):
    if create_book.genres is not None:
        provided_genres_are_valid, invalid_genres = await valid_genres(create_book.genres)
        if not provided_genres_are_valid:
            raise HTTPException(status_code=400, detail=f'Invalid Genres: {invalid_genres}')
    
    try: 
        contents = get_serializable_contents(create_book.contents)
        query = book_table.insert().values(name=create_book.name, 
                                    total_pages=create_book.total_pages,
                                    total_chapters=create_book.total_chapters,
                                    author=create_book.author, 
                                    genres=create_book.genres if create_book.genres is not None else [], 
                                    contents=contents
        )
        last_record_id = await database.execute(query)
        return await database.fetch_one(book_table.select().where(book_table.c.id == last_record_id))
    except HTTPException as hppt_e: 
        raise HTTPException(status_code=500, detail=f'Error creating book. {hppt_e}')


def either_or(orig, updt):
    if updt == None:
        return orig 
    return updt 


def get_serializable_contents(contents: Optional[List[TableOfContent]]) -> List[str]:
    return list(map(lambda x: x.dict(), contents)) if contents is not None else []

@router.put('/add_content/{book_id}')
async def add_content(book_id: int, contents: List[TableOfContent], _ = Depends(get_current_user)):
    book = dict(await database.fetch_one(book_table.select().where(book_id == book_table.c.id)))
    new_contents = book['contents'] + get_serializable_contents(contents)
    await database.execute(book_table.update().where(book_table.c.id == book_id).values(contents=new_contents))
    return await database.fetch_one(book_table.select().where(book_table.c.id == book_id))


@router.put('/{book_id}')
async def update_a_book(book_id: int, update_book: UpdateBook, _ = Depends(get_current_user)):


    # check if new name is unique
    
    # check if books with id exists 
    current_book = await database.fetch_one(book_table.select().where(book_table.c.id == book_id))
    if current_book is None or len(current_book) <= 0:
        raise HTTPException(status_code=400, detail='Book with id does not exist')
    current_book = dict(current_book)
    
    if update_book.genres is not None:
        provided_genres_are_valid, invalid_genres = await valid_genres(update_book.genres)
        if not provided_genres_are_valid:
            raise HTTPException(status_code=400, detail=f'Invalid Genres: {invalid_genres}')
        
    query = book_table.update().where(book_table.c.id == book_id).values(
        name=either_or(current_book['name'], update_book.name), 
        total_pages=either_or(current_book['total_pages'], update_book.total_pages),
        total_chapters=either_or(current_book['total_chapters'], update_book.total_chapters),
        author=either_or(current_book['author'], update_book.author),
        genres=either_or(current_book['genres'], update_book.genres), 
        contents=either_or(current_book['contents'], get_serializable_contents(update_book.contents))
    )
    await database.execute(query)
    return await database.fetch_one(book_table.select().where(book_table.c.id == book_id))