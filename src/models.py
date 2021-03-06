import datetime 
import sqlalchemy as sql
from dotenv import load_dotenv, dotenv_values
from sqlalchemy.dialects.postgresql import JSON

import databases
import os 
load_dotenv('.env')

if len(dotenv_values()):
    config = dotenv_values()
else:
    config = os.environ
database = databases.Database(config['DATABASE_URL'])


#
#
# metadata = sql.MetaData()
# '''
#
#
# '''
# author_table = sql.Table(
#     'author',
#     metadata,
#     sql.Column('id', sql.Integer, primary_key=True),
#     sql.Column('name', sql.String, nullable=False, unique=True),
#     sql.Column('nationality', sql.String)
# )
#
# book_genre_table = sql.Table(
#     'book_genre',
#     metadata,
#     sql.Column('id', sql.Integer, primary_key=True),
#     sql.Column('name', sql.String,nullable=False, unique=True),
# )
#
# book_franchise_table = sql.Table(
#     'book_franchise',
#     metadata,
#     sql.Column('id', sql.Integer, primary_key=True),
#     sql.Column('name', sql.String, nullable=False, unique=True),
# )
# '''
# update to:
# book_franchise_order_table = sql.Table(
#     'book_franchise',
#     metadata,
#     sql.Column('id', sql.Integer, primary_key=True), # TODO: primary key on (franchise, book)
#     sql.Column('franchise', sql.ForiegnKey('book_franchise.id'), nullable=False),
#     sql.ForeignKey('book.id', nullable=False),
#     sql.Column('book_order',
#                         sql.Integer,
#                         nullable=False,
#                         sql.CheckConstraint('book_order > 0'),
#                     )
# )
# '''
#
# '''
#
# -- https://en.wikipedia.org/wiki/List_of_genres
# CREATE TABLE genre (
#     id SERIAL PRIMARY KEY,
#     name TEXT UNIQUE NOT NULL
# );
#
# CREATE TABLE author (
#     id SERIAL PRIMARY KEY,
#     name TEXT UNIQUE NOT NULL
# );
#
# -- CREATE TYPE BookType AS ENUM ('Fiction', 'Non-Fiction');
#
# CREATE TABLE book (
#     id SERIAL PRIMARY KEY,
#     name TEXT UNIQUE NOT NULL,
#     total_pages INTEGER DEFAULT 1 NOT NULL CHECK (total_pages >= 1),
#     total_chapters INTEGER DEFAULT 1 NOT NULL CHECK (total_chapters >= 1),
#     author INTEGER REFERENCES author(id) NOT NULL,
#     times_read INTEGER DEFAULT 0 CHECK (times_read >= 0)
# );
#
# CREATE TABLE book_genre (
#     book INTEGER REFERENCES book(id),
#     genre INTEGER REFERENCES genre(id)
# );
#
# CREATE TABLE franchise (
#     id SERIAL PRIMARY KEY,
#     name TEXT UNIQUE NOT NULL
# );
#
# CREATE TABLE book_franchise (
#     book INTEGER REFERENCES book(id) NOT NULL ON CASCASE DELETE,
#     book_order INTEGER CHECK (book_order >= 0) NOT NULL,
#     franchise INTEGER REFERENCES franchise(id) NOT NULL ON CASCASE DELETE,
#     PRIMARY KEY (book, franchise, book_order)
# );
#
# CREATE TABLE book_chapters (
#     book INTEGER REFERENCES book(id),
#     chapter_name TEXT,
#     order INTEGER,
#     on_page INTEGER
#
# );
#
# CREATE TABLE history (
#     book INTEGER REFERENCES book(id) NOT NULL,
#     page_mark INTEGER NOT NULL,
#     chapter_mark INTEGER,
#     read_at DATE NOT NULL DEFAULT CURRENT_DATE
# );
#
# '''
# book_table = sql.Table(
#     'book',
#     metadata,
#     sql.Column('id', sql.Integer, primary_key=True),
#     sql.Column('name', sql.String, nullable=False, unique=True),
#     sql.Column('total_pages', sql.Integer,
#                 sql.CheckConstraint('total_pages > 0'),
#                 nullable=False, default=1,
#             ),
#     sql.Column('total_chapters',
#                 sql.Integer,
#                 sql.CheckConstraint('total_chapters > 0'),
#                 nullable=False, default=1
#             ),
#     sql.Column('author',
#                 sql.Integer,
#                 sql.ForeignKey('author.id'),
#                 nullable=False
#             ),
#     sql.Column('genres',JSON),
#     sql.Column('contents', JSON),
#     sql.Column('read_amount', sql.Integer, default=0)
# )
#
#
# '''
#
# '''
#
# history_table = sql.Table(
#     'history',
#     metadata,
#     sql.Column('id', sql.Integer, primary_key=True),
#     sql.Column('book', sql.Integer, sql.ForeignKey('book.id'), nullable=False),
#     sql.Column('page_mark', sql.Integer,
#                         sql.CheckConstraint('page_mark > 0'),nullable=False
#                     ),
#     sql.Column('chapter_mark',
#                         sql.Integer, sql.CheckConstraint('chapter_mark > 0'),nullable=False
#                     ),
#     sql.Column('read_at', sql.DateTime, default=datetime.datetime.utcnow)
# )
#
#
#
# engine = sql.create_engine(
#     config['DATABASE_URL'],
#     # connect_args={"check_same_thread": False}
# )
# # metadata.create_all(engine)