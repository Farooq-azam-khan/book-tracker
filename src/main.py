

from fastapi import FastAPI, Depends, HTTPException, status
from dotenv import load_dotenv, dotenv_values
import databases
from models import Book, Author, CreateBook, User, Token, TokenData
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from passlib.context import CryptContext

from typing import Optional

from jose import JWTError, jwt
from datetime import timedelta, datetime

import sqlalchemy

load_dotenv('.env')
DATABASE_URL = dotenv_values()['DATABASE_URL']
SECRET_KEY = dotenv_values()['SECRET_KEY']
ALGORITHM = dotenv_values()['ALGORITHM']
database = databases.Database(DATABASE_URL)

metadata = sqlalchemy.MetaData()
book = sqlalchemy.Table(
    'book',
    metadata,
    sqlalchemy.Column('id', sqlalchemy.Integer, primary_key=True),
    sqlalchemy.Column('name', sqlalchemy.String, nullable=False),
    sqlalchemy.Column('total_pages', sqlalchemy.Integer, nullable=False),
    sqlalchemy.Column('total_chapters', sqlalchemy.Integer, nullable=False),
    sqlalchemy.Column('author', sqlalchemy.Integer, sqlalchemy.ForeignKey('author.id'), nullable=False),
)

author = sqlalchemy.Table(
    'author', 
    metadata, 
    sqlalchemy.Column('id', sqlalchemy.Integer, primary_key=True), 
    sqlalchemy.Column('name', sqlalchemy.String, nullable=False),
)

engine = sqlalchemy.create_engine(
    DATABASE_URL, connect_args={"check_same_thread": False}
)
# metadata.create_all(engine)


oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

app = FastAPI()


def verify_password(plain_password, hashed_password):
    return pwd_context.verify(plain_password, hashed_password)


def get_password_hash(password):
    return pwd_context.hash(password)

@app.get('/')
def index():
    return {}

@app.on_event('startup')
async def startup():
    await database.connect()
    

@app.on_event('shutdown')
async def shutdown():
    await database.disconnect()

@app.get('/')
async def index():
    return {'books': []}

@app.get('/books')
async def books():
    query = book.select()
    return await database.fetch_all(query)

@app.get('/books/{book_id}')
async def get_a_book(book_id: int):
    query = book.select().where(book.c.id == book_id)
    return await database.fetch_all(query)


@app.get('/authors')
async def get_all_authors():
    query = author.select()
    return await database.fetch_all(query)

# @app.get('/authors/{author_id}')
# def author():
#     return {}



@app.post("/token", response_model=Token)
async def login_for_access_token(form_data: OAuth2PasswordRequestForm = Depends()):
    user = authenticate_user(form_data.username, form_data.password)
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect username or password",
            headers={"WWW-Authenticate": "Bearer"},
        )
    ACCESS_TOKEN_EXPIRE_MINUTES = int(dotenv_values()['ACCESS_TOKEN_EXPIRE_MINUTES'])
    access_token_expires = timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    access_token = create_access_token(
        data={"sub": dotenv_values()['USERNAME']}, expires_delta=access_token_expires
    )
    return {"access_token": access_token, "token_type": "bearer"}


def create_access_token(data: dict, expires_delta: Optional[timedelta] = None):
    to_encode = data.copy()
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes=15)
    to_encode.update({"exp": expire})
    
    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt


async def get_current_user(token: str = Depends(oauth2_scheme)):
    credentials_exception = HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail="Could not validate credentials",
        headers={"WWW-Authenticate": "Bearer"},
    )

    try:
        
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        username: str = payload.get("sub")
        if username is None:
            raise credentials_exception
        token_data = TokenData(username=username)
    except JWTError:
        raise credentials_exception
    return True 
    # user = get_user(fake_users_db, username=token_data.username)
    # if user is None:
    #     raise credentials_exception
    # return user

def authenticate_user(username: str, password: str):
    return dotenv_values()['PASSWORD'] == password and dotenv_values()['USERNAME'] == username





@app.post('/books')
async def create_book(create_book: CreateBook, current_user = Depends(get_current_user)):
    query = book.insert().values(name=create_book.name, 
                                total_pages=create_book.total_pages,
                                total_chapters=create_book.total_chapters,
                                author=create_book.author)
    last_record_id = await database.execute(query)
    return {**create_book.dict(), "id": last_record_id}
