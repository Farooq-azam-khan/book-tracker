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


@router.post('/books')
async def create_book(create_book: CreateBook, current_user = Depends(get_current_user)):
    query = book_table.insert().values(name=create_book.name, 
                                total_pages=create_book.total_pages,
                                total_chapters=create_book.total_chapters,
                                author=create_book.author)
    last_record_id = await database.execute(query)
    return {**create_book.dict(), 'id': last_record_id}