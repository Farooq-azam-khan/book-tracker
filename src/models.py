from pydantic import BaseModel, validator
from typing import Optional
import datetime 
import sqlalchemy
from dotenv import load_dotenv, dotenv_values


import databases
import os 
load_dotenv('.env')

if len(dotenv_values()):
    config = dotenv_values()
else:
    config = os.environ
database = databases.Database(config['DATABASE_URL'])


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
    book_order: int
    franchise: Optional[int]
    genre: Optional[int]

    @validator('total_pages')
    def total_pages_positive(cls, v):
        if v <= 0:
            raise ValueError('total pages has to be bigger than 1')
        return v 

    @validator('total_chapters')
    def total_chapters_positive(cls, v):
        if v <= 0:
            raise ValueError('total chapters has to be bigger than 1')
        return v
    
    @validator('book_order')
    def book_order_is_pos(cls, v):
        if v <= 0:
            raise ValueError('book order needs to be bigger than 1')
        return v

class UpdateBook(CreateBook):
    name: Optional[str]
    total_pages: Optional[int]
    total_chapters: Optional[int]
    author: Optional[int]
    book_order: Optional[int]
    franchise: Optional[int]
    genre: Optional[int]



class CreateFranchise(BaseModel):
    name: str 

class Franchise(CreateFranchise):
    id: int 

class CreateGenre(BaseModel):
    name: str 

class Genre(CreateGenre):
    id: int 

class CreateAuthor(BaseModel):
    name: str 


class Author(BaseModel):
    name: str 
    id: int 


class CreateHistory(BaseModel):
    book: int 
    page_mark: int
    chapter_mark: int
    read_at: Optional[datetime.datetime]

    # TODO: validate page_mark and chapter_mark 
    # against previous entries
    # keep in mind that the book might have been read before 
    # and it is being read a second(or third, etc.) time 

class History(BaseModel):
    id: int 
    book: int 
    start_page: Optional[int]
    end_page: int


metadata = sqlalchemy.MetaData()

author_table = sqlalchemy.Table(
    'author', 
    metadata, 
    sqlalchemy.Column('id', sqlalchemy.Integer, primary_key=True), 
    sqlalchemy.Column('name', sqlalchemy.String, nullable=False, unique=True),
)


class UpdateAuthor(CreateAuthor):
    pass



book_genre_table = sqlalchemy.Table(
    'book_genre', 
    metadata, 
    sqlalchemy.Column('id', sqlalchemy.Integer, primary_key=True), 
    sqlalchemy.Column('name', sqlalchemy.String,nullable=False, unique=True), 
)

book_franchise_table = sqlalchemy.Table(
    'book_franchise', 
    metadata, 
    sqlalchemy.Column('id', sqlalchemy.Integer, primary_key=True), 
    sqlalchemy.Column('name', sqlalchemy.String, nullable=False, unique=True), 
)
'''
update to: 
book_franchise_order_table = sqlalchemy.Table(
    'book_franchise', 
    metadata, 
    sqlalchemy.Column('id', sqlalchemy.Integer, primary_key=True), # TODO: primary key on (franchise, book)
    sqlalchemy.Column('franchise', sqlalchemy.ForiegnKey('book_franchise.id'), nullable=False), 
    sqlalchemy.ForeignKey('book.id', nullable=False), 
    sqlalchemy.Column('book_order',
                        sqlalchemy.Integer,
                        nullable=False,
                        sqlalchemy.CheckConstraint('book_order > 0'),
                    )
)
'''


# TODO: add column `descritpion`


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
    sqlalchemy.Column('genre',
                        sqlalchemy.Integer, 
                        sqlalchemy.ForeignKey('book_genre.id')
                    ),
    sqlalchemy.Column('franchise',
                        sqlalchemy.Integer, 
                        sqlalchemy.ForeignKey('book_franchise.id')
                    ), # TODO: remove 
    sqlalchemy.Column('book_order',
                        sqlalchemy.Integer
                    ) # TODO: remove
)

history_table = sqlalchemy.Table(
    'history', 
    metadata, 
    sqlalchemy.Column('id', sqlalchemy.Integer, primary_key=True), 
    sqlalchemy.Column('book', sqlalchemy.Integer, sqlalchemy.ForeignKey('book.id'), nullable=False), 
    sqlalchemy.Column('page_mark', sqlalchemy.Integer, 
                        sqlalchemy.CheckConstraint('page_mark > 0'),nullable=False
                    ), 
    sqlalchemy.Column('chapter_mark', 
                        sqlalchemy.Integer, sqlalchemy.CheckConstraint('chapter_mark > 0'),nullable=False
                    ), 
    sqlalchemy.Column('read_at', sqlalchemy.DateTime, default=datetime.datetime.utcnow)
)



engine = sqlalchemy.create_engine(
    config['DATABASE_URL'], 
    # connect_args={"check_same_thread": False}
)
# metadata.create_all(engine)