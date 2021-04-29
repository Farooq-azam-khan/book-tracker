from fastapi import APIRouter, Depends
from datetime import datetime

import sqlalchemy
from src.models import (author_table, database, history_table, CreateHistory)
from src.dependencies import get_current_user

router = APIRouter()

@router.get('/')
async def get_history(current_user=Depends(get_current_user)):
    query = history_table.select().order_by(sqlalchemy.desc(history_table.c.read_at))
    return await database.fetch_all(query)

@router.post('/')
async def get_history(create_history: CreateHistory, current_user=Depends(get_current_user)):
    query = history_table.insert().values(book=create_history.book, 
                                start_page=create_history.start_page, 
                                end_page=create_history.end_page, 
                                read_at=create_history.read_at if not create_history.read_at == None else datetime.utcnow()
                                )
                                
    last_record_id = await database.execute(query)
    query = history_table.select().where(history_table.c.id == last_record_id)
    return await database.fetch_all(query)