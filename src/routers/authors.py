from fastapi import APIRouter, Depends, HTTPException
from src.models import author_table, database
from src.types import CreateAuthor, UpdateAuthor, Author
from src.dependencies import get_current_user
from typing import List 

router = APIRouter()

@router.get('/', response_model=List[Author])
async def get_all_authors():
    query = author_table.select().order_by(author_table.c.name)
    return await database.fetch_all(query)

@router.get('/{author_id}', response_model=Author)
async def get_author(author_id: int):
    query = author_table.select().where(author_table.c.id == author_id)
    return await database.fetch_one(query)


@router.post('/', response_model=Author)
async def create_author(create_author: CreateAuthor, _=Depends(get_current_user)):
    query = author_table.insert().values(name=create_author.name)
    last_record_id = await database.execute(query)
    return {**create_author.dict(), 'id': last_record_id}

@router.put('/{author_id}')
async def update_an_author(author_id: int, author: UpdateAuthor, _=Depends(get_current_user)):
    author_names = await database.fetch_all(author_table.select().where(author_table.c.name == author.name))
    if len(author_names) >= 1:
        raise HTTPException(status_code=400, detail='Name already exists in database')
    query = author_table.update().where(author_table.c.id == author_id).values(name=author.name)
    await database.execute(query)
    query = author_table.select().where(author_table.c.id == author_id)
    return await database.fetch_one(query)