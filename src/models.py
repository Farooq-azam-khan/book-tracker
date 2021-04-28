from pydantic import BaseModel
from typing import Optional

class User(BaseModel):
    username: str 
    password: str 

class Token(BaseModel):
    access_token: str 
    token_type: str 

class TokenData(BaseModel):
    username: Optional[str] = None 


class Book(BaseModel):
    name: str
    id: int 


class CreateBook(BaseModel):
    name: str
    total_pages: int
    total_chapters: int
    author: int
    book_order: Optional[int]

class Author(BaseModel):
    name: str 
    id: int 
    data_of_birth: str



import sqlalchemy
from dotenv import load_dotenv, dotenv_values
import databases

load_dotenv('.env')

SECRET_KEY = dotenv_values()['SECRET_KEY']
ALGORITHM = dotenv_values()['ALGORITHM']
DATABASE_URL = dotenv_values()['DATABASE_URL']

database = databases.Database(DATABASE_URL)



DATABASE_URL = dotenv_values()['DATABASE_URL']

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