

from fastapi import FastAPI 
from dotenv import load_dotenv, dotenv_values
import databases
from models import Book, Author
import sqlalchemy

load_dotenv('.env')
DATABASE_URL = dotenv_values()['DATABASE_URL']
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



app = FastAPI()


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

# @app.post('/books')
# async def books(create_book: CreateBook):
#     query = book.insert().values(name=create_book.name, 
#                                 total_pages=create_book.total_pages,
#                                 total_chapters=create_book.total_chapters,
#                                 author=create_book.author)
#     last_record_id = await database.execute(query)
#     return {**create_book.dict(), "id": last_record_id}

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