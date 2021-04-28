from fastapi import APIRouter
from models import author, database

router = APIRouter()


@router.get('/')
async def books():
    query = book.select()
    return await database.fetch_all(query)

@router.get('/{book_id}')
async def get_a_book(book_id: int):
    query = book.select().where(book.c.id == book_id)
    return await database.fetch_all(query)