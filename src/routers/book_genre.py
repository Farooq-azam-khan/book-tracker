from fastapi import APIRouter
from src.models import author_table, database, book_genre_table, CreateGenre, Genre

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
async def create_a_genre(create_genre: CreateGenre):
    query = book_genre_table.insert().values(name=create_genre.name)
    last_record_id = await database.execute(query)
    query = book_genre_table.select().where(book_genre_table.c.id == last_record_id)
    return await database.fetch_one(query)
              