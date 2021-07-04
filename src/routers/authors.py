from fastapi import APIRouter, Depends, HTTPException
from src.models import database  # author_table,
from src.types import CreateAuthor, UpdateAuthor, Author
from src.dependencies import get_current_user
from typing import List

router = APIRouter()


@router.get('/', response_model=List[Author])
async def get_all_authors():
    query = '''SELECT * FROM author ORDER BY name'''
    return await database.fetch_all(query)


@router.get('/{author_id}', response_model=Author)
async def get_author(author_id: int):
    query = '''SELECT * FROM author where id=:author_id'''  # author_table.select().where(author_table.c.id == author_id)
    values = {"author_id": author_id}
    return await database.fetch_one(query=query, values=values)


@router.post('/', response_model=Author)
async def create_author_route(create_author_req: CreateAuthor, _=Depends(get_current_user)):
    try:
        query = '''INSERT INTO author (name) values (:name) RETURNING *'''
        values = {"name": create_author_req.name}
        last_record_id = await database.execute(query=query, values=values)
        created_author = await database.fetch_one('''
            SELECT * FROM author WHERE id=:author_id
        ''', values={'author_id': last_record_id})
        return created_author
    except Exception as e:
        raise HTTPException(status_code=400, detail=e.message)


def either_or(orig, updt):
    if updt is None:
        return orig
    return updt


@router.put('/{author_id}')
async def update_an_author(author_id: int, author: UpdateAuthor, _=Depends(get_current_user)):
    query = '''
        UPDATE author 
        SET name = :author_name
        WHERE id = :author_id 
        RETURNING id
    '''
    values = {'author_name': author.name, 'author_id': author_id}
    await database.execute(query, values)
    query = '''SELECT * FROM author WHERE id=:author_id'''
    return await database.fetch_one(query, values={'author_id': author_id})
