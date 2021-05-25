from fastapi import APIRouter
from src.models import (database, 
                        book_franchise_table, 
                        )
from src.types import CreateFranchise, Franchise
from fastapi import Depends
from typing import List
from src.dependencies import get_current_user

router = APIRouter()


@router.get('/', response_model=List[Franchise])
async def get_book_franchises():
    query = book_franchise_table.select()
    return await database.fetch_all(query)

@router.get('/{franchise_id}', response_model=Franchise)
async def get_a_book_franchise(franchise_id: int):
    query = book_franchise_table.select().where(book_franchise_table.c.id == franchise_id)
    return await database.fetch_one(query)

@router.post('/', response_model=Franchise)
async def create_a_franchise(create_franchise: CreateFranchise, current_user=Depends(get_current_user)):
    query = book_franchise_table.insert().values(name=create_franchise.name)
    last_record_id = await database.execute(query)
    query = book_franchise_table.select().where(book_franchise_table.c.id == last_record_id)
    return await database.fetch_one(query)