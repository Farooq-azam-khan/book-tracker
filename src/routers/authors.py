from fastapi import APIRouter
from src.models import author_table, database
router = APIRouter()

@router.get('/')
async def get_all_authors():
    query = author_table.select()
    return await database.fetch_all(query)



@router.get('/{author_id}')
async def get_author(author_id: int):
    query = author_table.select().where(author_table.c.id == author_id)
    return await database.fetch_all(query)

