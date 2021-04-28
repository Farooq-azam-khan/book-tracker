from fastapi import APIRouter
from models import author_table, database, book_table

router = APIRouter()


@router.get('/')
async def books():
    query = book_table.select()
    return await database.fetch_all(query)

@router.get('/{book_id}')
async def get_a_book(book_id: int):
    query = book_table.select().where(book_table.c.id == book_id)
    return await database.fetch_all(query)