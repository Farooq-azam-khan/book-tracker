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


class CreateAuthor(BaseModel):
    name: str 


class Author(BaseModel):
    name: str 
    id: int 


class CreateHistory(BaseModel):
    book: int 
    start_page: Optional[int]
    end_page: int
    create_at: Optional[str]

class History(BaseModel):
    id: int 
    book: int 
    start_page: Optional[int]
    end_page: int

import sqlalchemy
from dotenv import load_dotenv, dotenv_values
import databases
import datetime 
load_dotenv('.env')

SECRET_KEY = dotenv_values()['SECRET_KEY']
ALGORITHM = dotenv_values()['ALGORITHM']
DATABASE_URL = dotenv_values()['DATABASE_URL']

database = databases.Database(DATABASE_URL)



DATABASE_URL = dotenv_values()['DATABASE_URL']

metadata = sqlalchemy.MetaData()
book_table = sqlalchemy.Table(
    'book',
    metadata,
    sqlalchemy.Column('id', sqlalchemy.Integer, primary_key=True),
    sqlalchemy.Column('name', sqlalchemy.String, nullable=False, unique=True),
    sqlalchemy.Column('total_pages', sqlalchemy.Integer, 
                        sqlalchemy.CheckConstraint('total_pages > 0'),
                        nullable=False, default=1,
                    ),
    sqlalchemy.Column('total_chapters', 
                        sqlalchemy.Integer, 
                        sqlalchemy.CheckConstraint('total_chapters > 0'), 
                        nullable=False, default=1
                    ),
    sqlalchemy.Column('author', 
                        sqlalchemy.Integer, 
                        sqlalchemy.ForeignKey('author.id'), 
                        nullable=False
                    ),
)

author_table = sqlalchemy.Table(
    'author', 
    metadata, 
    sqlalchemy.Column('id', sqlalchemy.Integer, primary_key=True), 
    sqlalchemy.Column('name', sqlalchemy.String, nullable=False, unique=True),
)

history_table = sqlalchemy.Table(
    'history', 
    metadata, 
    sqlalchemy.Column('id', sqlalchemy.Integer, primary_key=True), 
    sqlalchemy.Column('book', sqlalchemy.Integer, sqlalchemy.ForeignKey('book.id'), nullable=False), 
    sqlalchemy.Column('start_page', sqlalchemy.Integer), 
    sqlalchemy.Column('end_page', sqlalchemy.Integer, nullable=False), 
    sqlalchemy.Column('read_at', sqlalchemy.DateTime, default=datetime.datetime.utcnow)
)
engine = sqlalchemy.create_engine(
    DATABASE_URL, 
    # connect_args={"check_same_thread": False}
)
# metadata.create_all(engine)