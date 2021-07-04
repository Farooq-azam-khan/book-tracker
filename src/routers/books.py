from fastapi import APIRouter, Depends, HTTPException
from src.models import database
import json
from src.types import CreateBook, TableOfContent, UpdateBook, Book
from typing import List, Optional
from src.dependencies import get_current_user

router = APIRouter()


@router.get('/', response_model=List[Book])
async def get_all_books():
    query = '''SELECT * FROM book'''
    books = await database.fetch_all(query)
    books_json = map(lambda book: parse_toc(dict(book)), list(books))
    return list(books_json)


async def get_book_by_id(book_id: int):
    query = '''
        SELECT * FROM book WHERE id = :book_id 
        ORDER BY name 
    '''
    values = {'book_id': book_id}
    unique_book = await database.fetch_one(query, values)
    unique_book = dict(unique_book)
    return parse_toc(unique_book)



def parse_toc(book):
    book['table_of_contents'] = list(map(lambda x: json.loads(x), book['table_of_contents']))
    return book


@router.get('/{book_id}', response_model=Book)
async def get_a_book(book_id: int):
    return await get_book_by_id(book_id)


# async def valid_genres(book_genres: List[int]) -> bool:
#     all_genres = set(list(map(lambda x: x['id'], await database.fetch_all(book_genre_table.select()))))
#     genres_not_in_db = set(book_genres).difference(all_genres)
#     are_book_genres_in_all_genres_list = len(genres_not_in_db) == 0
#     if are_book_genres_in_all_genres_list:
#         return True, []
#     return False, list(genres_not_in_db)


@router.post('/')#, response_model=Book)
async def create_book_req(create_book: CreateBook, _=Depends(get_current_user)):
    # if create_book.genres is not None:
    #     provided_genres_are_valid, invalid_genres = await valid_genres(create_book.genres)
    #     if not provided_genres_are_valid:
    #         raise HTTPException(status_code=400, detail=f'Invalid Genres: {invalid_genres}')

    try:
        query = '''
            INSERT INTO book 
                (name, total_pages, total_chapters, author, genre, table_of_contents, times_read)
                VALUES (:name, :total_pages, :total_chapters, :author, :genre, :contents, :times_read)
                RETURNING id
        '''
        values = {'name': create_book.name,
                  'total_pages': create_book.total_pages,
                  'total_chapters': create_book.total_chapters,
                  'author': create_book.author,
                  'genre': create_book.genre,
                  'contents': list(map(lambda x: json.dumps(dict(x)), create_book.table_of_contents)),
                  'times_read': create_book.times_read
                  }
        print('created query and values')
        last_record_id = await database.execute(query, values)
        print('the returned id:', last_record_id)
        return (await get_book_by_id(book_id=last_record_id))

    except Exception as e:
        raise HTTPException(status_code=500, detail=e.message)


def either_or(orig, updt):
    if updt == None:
        return orig
    return updt


def get_serializable_contents(contents: List[TableOfContent]) -> List[str]:

    return list(map(lambda x: json.dumps(x.dict()), contents))

def deserialize_book(toc: List[str]) -> List[TableOfContent]:
    print(toc)
    return []
# @router.put('/add_content/{book_id}')
# async def add_content(book_id: int, contents: List[TableOfContent], _=Depends(get_current_user)):
#     book = dict(await database.fetch_one(book_table.select().where(book_id == book_table.c.id)))
#     new_contents = book['contents'] + get_serializable_contents(contents)
#     await database.execute(book_table.update().where(book_table.c.id == book_id).values(contents=new_contents))
#     return await database.fetch_one(book_table.select().where(book_table.c.id == book_id))


# @router.put('/{book_id}')
# async def update_a_book(book_id: int, update_book: UpdateBook, _=Depends(get_current_user)):
#     # check if new name is unique
#
#     # check if books with id exists
#     current_book = await database.fetch_one(book_table.select().where(book_table.c.id == book_id))
#     if current_book is None or len(current_book) <= 0:
#         raise HTTPException(status_code=400, detail='Book with id does not exist')
#     current_book = dict(current_book)
#
#     if update_book.genres is not None:
#         provided_genres_are_valid, invalid_genres = await valid_genres(update_book.genres)
#         if not provided_genres_are_valid:
#             raise HTTPException(status_code=400, detail=f'Invalid Genres: {invalid_genres}')
#
#     # query = book_table.update().where(book_table.c.id == book_id).values(
#     #     name=either_or(current_book['name'], update_book.name),
#     #     total_pages=either_or(current_book['total_pages'], update_book.total_pages),
#     #     total_chapters=either_or(current_book['total_chapters'], update_book.total_chapters),
#     #     author=either_or(current_book['author'], update_book.author),
#     #     genres=either_or(current_book['genres'], update_book.genres),
#     #     contents=either_or(current_book['contents'], get_serializable_contents(update_book.contents))
#     # )
#     await database.execute(query)
#     return await database.fetch_one(book_table.select().where(book_table.c.id == book_id))
