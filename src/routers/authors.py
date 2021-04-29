from fastapi import APIRouter, Depends, HTTPException
from src.models import author_table, database, CreateAuthor, UpdateAuthor
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


@router.post('/')
async def create_author(create_author: CreateAuthor, current_user=Depends(get_current_user)):
    query = author_table.insert().values(name=create_author.name)
    last_record_id = await database.execute(query)
    return {**create_author.dict(), 'id': last_record_id}

@router.put('/{author_id}')
async def update_an_author(author_id: int, author: UpdateAuthor, current_user=Depends(get_current_user)):
    author_names = await database.fetch_all(author_table.select().where(author_table.c.name == author.name))
    if len(author_names) >= 1:
        raise HTTPException(status_code=400, detail='Name already exists in database')
    query = author_table.update().where(author_table.c.id == author_id).values(name=author.name)
    await database.execute(query)
    query = author_table.select().where(author_table.c.id == author_id)
    return await database.fetch_one(query)