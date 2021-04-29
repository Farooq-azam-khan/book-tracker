from fastapi import FastAPI, Depends, HTTPException, status
from dotenv import load_dotenv, dotenv_values

from .models import (Book, Author, CreateBook, CreateAuthor, CreateHistory,
                    Token, TokenData,
                    book_table, author_table,#, history_table,
                    database
                    )
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from passlib.context import CryptContext
from .dependencies import authenticate_user, get_current_user, pwd_context
from typing import Optional

from jose import JWTError, jwt
from datetime import timedelta, datetime

from .routers import authors as authors_router
from .routers import books as books_router
from .routers import history as history_router 

import os 
load_dotenv('.env')
DATABASE_URL = os.environ['DATABASE_URL']#dotenv_values()['DATABASE_URL']
SECRET_KEY = os.environ['SECRET_KEY']#dotenv_values()['SECRET_KEY']
ALGORITHM = os.environ['ALGORITHM']#dotenv_values()['ALGORITHM']


app = FastAPI()

app.include_router(authors_router.router, prefix='/authors')
app.include_router(books_router.router, prefix='/books')
app.include_router(history_router.router, prefix='/history', 
                    dependencies=[Depends(get_current_user)]
                    )

@app.get('/')
def index():
    return 'go to /docs or /redocs'

@app.on_event('startup')
async def startup():
    await database.connect()
    

@app.on_event('shutdown')
async def shutdown():
    await database.disconnect()


@app.post('/token', response_model=Token)
async def login_for_access_token(form_data: OAuth2PasswordRequestForm = Depends()):
    print('logging in ....')
    user = authenticate_user(form_data.username, form_data.password)
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail='Incorrect username or password',
            headers={'WWW-Authenticate': 'Bearer'},
        )
    ACCESS_TOKEN_EXPIRE_MINUTES = int(os.environ['ACCESS_TOKEN_EXPIRE_MINUTES'])#int(dotenv_values()['ACCESS_TOKEN_EXPIRE_MINUTES'])
    USERNAME = os.environ['USERNAME']
    access_token_expires = timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    access_token = create_access_token(
        data={'sub': USERNAME}, expires_delta=access_token_expires
    )
    return {'access_token': access_token, 'token_type': 'bearer'}


def create_access_token(data: dict, expires_delta: Optional[timedelta] = None):
    to_encode = data.copy()
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes=15)
    to_encode.update({"exp": expire})
    
    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt


@app.post('/authors')
async def create_author(create_author: CreateAuthor, current_user=Depends(get_current_user)):
    query = author_table.insert().values(name=create_author.name)
    last_record_id = await database.execute(query)
    return {**create_author.dict(), 'id': last_record_id}

@app.post('/books')
async def create_book(create_book: CreateBook, current_user = Depends(get_current_user)):
    query = book_table.insert().values(name=create_book.name, 
                                total_pages=create_book.total_pages,
                                total_chapters=create_book.total_chapters,
                                author=create_book.author)
    last_record_id = await database.execute(query)
    return {**create_book.dict(), 'id': last_record_id}