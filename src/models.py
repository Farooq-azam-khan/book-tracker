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




metadata = sql.MetaData()

author_table = sql.Table(
    'author', 
    metadata, 
    sql.Column('id', sql.Integer, primary_key=True), 
    sql.Column('name', sql.String, nullable=False, unique=True),
)

book_genre_table = sql.Table(
    'book_genre', 
    metadata, 
    sql.Column('id', sql.Integer, primary_key=True), 
    sql.Column('name', sql.String,nullable=False, unique=True), 
)

book_franchise_table = sql.Table(
    'book_franchise', 
    metadata, 
    sql.Column('id', sql.Integer, primary_key=True), 
    sql.Column('name', sql.String, nullable=False, unique=True), 
)
'''
update to: 
book_franchise_order_table = sql.Table(
    'book_franchise', 
    metadata, 
    sql.Column('id', sql.Integer, primary_key=True), # TODO: primary key on (franchise, book)
    sql.Column('franchise', sql.ForiegnKey('book_franchise.id'), nullable=False), 
    sql.ForeignKey('book.id', nullable=False), 
    sql.Column('book_order',
                        sql.Integer,
                        nullable=False,
                        sql.CheckConstraint('book_order > 0'),
                    )
)
'''


# TODO: add column `descritpion`


book_table = sql.Table(
    'book',
    metadata,
    sql.Column('id', sql.Integer, primary_key=True),
    sql.Column('name', sql.String, nullable=False, unique=True),
    sql.Column('total_pages', sql.Integer, 
                sql.CheckConstraint('total_pages > 0'),
                nullable=False, default=1,
            ),
    sql.Column('total_chapters', 
                sql.Integer, 
                sql.CheckConstraint('total_chapters > 0'), 
                nullable=False, default=1
            ),
    sql.Column('author', 
                sql.Integer, 
                sql.ForeignKey('author.id'), 
                nullable=False
            ),
    sql.Column('genres',JSON),
    sql.Column('contents', JSON)
)

history_table = sql.Table(
    'history', 
    metadata, 
    sql.Column('id', sql.Integer, primary_key=True), 
    sql.Column('book', sql.Integer, sql.ForeignKey('book.id'), nullable=False), 
    sql.Column('page_mark', sql.Integer, 
                        sql.CheckConstraint('page_mark > 0'),nullable=False
                    ), 
    sql.Column('chapter_mark', 
                        sql.Integer, sql.CheckConstraint('chapter_mark > 0'),nullable=False
                    ), 
    sql.Column('read_at', sql.DateTime, default=datetime.datetime.utcnow)
)



engine = sql.create_engine(
    config['DATABASE_URL'], 
    # connect_args={"check_same_thread": False}
)
#metadata.create_all(engine)