from fastapi import APIRouter
from fastapi.param_functions import Depends
from src.models import database, book_genre_table
from src.types import CreateGenre
from src.dependencies import get_current_user

router = APIRouter()


@router.get('/')
async def get_book_genres():
    query = book_genre_table.select()
    return await database.fetch_all(query)

@router.get('/{genre_d}')
async def get_a_book_genre(genre_d: int):
    query = book_genre_table.select().where(book_genre_table.c.id == genre_d)
    return await database.fetch_all(query)



@router.post('/')
async def create_a_genre(create_genre: CreateGenre, _ = Depends(get_current_user)):
    query = book_genre_table.insert().values(name=create_genre.name)
    last_record_id = await database.execute(query)
    query = book_genre_table.select().where(book_genre_table.c.id == last_record_id)
    return await database.fetch_one(query)
              