from fastapi import FastAPI, Depends, HTTPException, status, Request
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

# from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates

from .routers import authors as authors_router
from .routers import books as books_router
from .routers import history as history_router 
from .routers import book_franchise as book_franchise_router
from .routers import book_genre as book_genre_router

import os 
load_dotenv('.env')
DATABASE_URL = os.environ['DATABASE_URL']#dotenv_values()['DATABASE_URL']
SECRET_KEY = os.environ['SECRET_KEY']#dotenv_values()['SECRET_KEY']
ALGORITHM = os.environ['ALGORITHM']#dotenv_values()['ALGORITHM']


app = FastAPI()
# app.mount('/static', StaticFiles(directory='static'), name='static')
templates = Jinja2Templates(directory='src/elm-ui')

app.include_router( authors_router.router, prefix='/authors', tags=['Authors'])
app.include_router( books_router.router, prefix='/books', tags=['Books'])
app.include_router( history_router.router, prefix='/history', 
                    # dependencies=[Depends(get_current_user)]
                    tags=['Reading History']
                    )
app.include_router( book_franchise_router.router, 
                    prefix='/book_franchise',
                    # dependencies=[Depends(get_current_user)], 
                    tags=['Book Franchises']
                )
app.include_router( book_genre_router.router, 
                    prefix='/book_genre',
                    # dependencies=[Depends(get_current_user)], 
                    tags=['Book Genres']
                )

from fastapi.responses import HTMLResponse
@app.get('/', response_class=HTMLResponse)
def index(request: Request):
    return templates.TemplateResponse('index.html', {'title': 'Book Tracker - Home Page', 'request': request})


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
