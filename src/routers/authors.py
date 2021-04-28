from fastapi import APIRouter
from models import author, database
router = APIRouter()

@router.get('/')
async def get_all_authors():
    query = author.select()
    return await database.fetch_all(query)



@router.get('/{author_id}')
async def get_author(author_id: int):
    query = author.select().where(author.c.id == author_id)
    return await database.fetch_all(query)

