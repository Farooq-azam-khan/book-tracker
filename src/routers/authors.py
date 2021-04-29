from fastapi import APIRouter, Depends
from src.models import author_table, database, CreateAuthor
from src.dependencies import get_current_user

router = APIRouter()

@router.get('/')
async def get_all_authors():
    query = author_table.select()
    return await database.fetch_all(query)

@router.get('/{author_id}')
async def get_author(author_id: int):
    query = author_table.select().where(author_table.c.id == author_id)
    return await database.fetch_all(query)


@router.post('/authors')
async def create_author(create_author: CreateAuthor, current_user=Depends(get_current_user)):
    query = author_table.insert().values(name=create_author.name)
    last_record_id = await database.execute(query)
    return {**create_author.dict(), 'id': last_record_id}
