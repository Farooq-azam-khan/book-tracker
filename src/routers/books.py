from fastapi import APIRouter, Depends
from src.models import author_table, database, book_table, CreateBook
from src.dependencies import get_current_user
router = APIRouter()


@router.get('/')
async def books():
    query = book_table.select()
    return await database.fetch_all(query)

@router.get('/{book_id}')
async def get_a_book(book_id: int):
    query = book_table.select().where(book_table.c.id == book_id)
    return await database.fetch_all(query)


async def create_book(create_book: CreateBook, current_user = Depends(get_current_user)):
    query = book_table.insert().values(name=create_book.name, 
                                total_pages=create_book.total_pages,
                                total_chapters=create_book.total_chapters,
                                author=create_book.author)
    last_record_id = await database.execute(query)
    return {**create_book.dict(), 'id': last_record_id}def either_or(orig, updt):

def either_or(orig, updt):
    if updt == None:
        return orig 
    return updt 

@router.put('/{book_id}')
async def update_a_book(book_id: int, update_book: UpdateBook, current_user = Depends(get_current_user)):

    # check if new name is unique
    books_count = await database.fetch_all(book_table.select().where(book_table.c.name == update_book.name))
    if len(books_count) >= 1:
        raise HTTPException(status_code=400, detail='Book with name already exists')
    
    # check if books with id exists 
    current_book = await database.fetch_one(book_table.select().where(book_table.c.id == book_id))
    if len(current_book) <= 0:
        raise HTTPException(status_code=400, detail='Book with id does not exist')
    current_book = dict(current_book)
    
    # check if franchise id exists 
    if not update_book.franchise == None : 
        franchise_query = book_franchise_table.select().where(book_franchise_table.c.id == update_book.franchise)
        franchise_db = await database.fetch_all(franchise_query)
        if len(franchise_db) <= 0:
            raise HTTPException(status_code=400, detail='Franchise id does not exist')

    if not update_book.genre == None : 
        genre_query = book_genre_table.select().where(book_genre_table.c.id == update_book.genre)
        genre_db = await database.fetch_all(genre_query)
        if len(genre_db) <= 0:
            raise HTTPException(status_code=400, detail='Genere id does not exist')

    query = book_table.update().where(book_table.c.id == book_id).values(
        name=either_or(current_book['name'], update_book.name), 
        total_pages=either_or(current_book['total_pages'], update_book.total_pages),
        total_chapters=either_or(current_book['total_chapters'], update_book.total_chapters),
        author=either_or(current_book['author'], update_book.author),
        book_order=either_or(current_book['book_order'], update_book.book_order), 
        franchise=either_or(current_book['franchise'], update_book.franchise), 
        genre=either_or(current_book['genre'], update_book.genre), 
    )
    await database.execute(query)
    return await database.fetch_one(book_table.select().where(book_table.c.id == book_id))