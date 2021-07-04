from fastapi import FastAPI, Depends, HTTPException, status, Request
from dotenv import load_dotenv, dotenv_values

from .models import database
from .types import Token
from fastapi.security import OAuth2PasswordRequestForm
from .dependencies import authenticate_user
from typing import Optional

from jose import jwt
from datetime import timedelta, datetime

from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates

from .routers import authors as authors_router
from .routers import books as books_router
from .routers import history as history_router
from .routers import book_franchise as book_franchise_router
from .routers import book_genre as book_genre_router
from .routers import book_progress as book_progress_router
import os

load_dotenv('.env')
SECRET_KEY = os.environ['SECRET_KEY']
ALGORITHM = os.environ['ALGORITHM']

app = FastAPI()
app.mount('/static', StaticFiles(directory='src/elm-ui'), name='static')
templates = Jinja2Templates(directory='src/elm-ui')

app.include_router(authors_router.router, prefix='/authors', tags=['Authors'])
app.include_router(books_router.router, prefix='/books', tags=['Books'])
app.include_router(history_router.router, prefix='/history',
                   tags=['Reading History']
                   )
app.include_router(book_franchise_router.router,
                   prefix='/book_franchise',
                   tags=['Book Franchises']
                   )
app.include_router(book_genre_router.router,
                   prefix='/book_genre',
                   tags=['Book Genres']
                   )
app.include_router(book_progress_router.router,
                   prefix='/progress',
                   tags=['Currently Reading'])

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


@app.get('/books_by_country')
async def get_books_by_country():
    print(10 * '-', '\n', 'reading book')
    return [
        {'country': 'USA', 'books': [{'name': 'The Final Empire'}]},
        {'country': 'Canada', 'books': [{'name': 'A Fine Balance'}]}
    ]


try:
    ACCESS_TOKEN_EXPIRE_MINUTES = int(dotenv_values()['ACCESS_TOKEN_EXPIRE_MINUTES'])
    USERNAME = dotenv_values()['USERNAME']
except:
    ACCESS_TOKEN_EXPIRE_MINUTES = int(os.environ['ACCESS_TOKEN_EXPIRE_MINUTES'])
    USERNAME = os.environ['USERNAME']


@app.post("/token", response_model=Token)
async def login_for_access_token(form_data: OAuth2PasswordRequestForm = Depends()):
    print('logging in ....')
    user = authenticate_user(form_data.username, form_data.password)
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail='Incorrect username or password',
            headers={'WWW-Authenticate': 'Bearer'},
        )

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
