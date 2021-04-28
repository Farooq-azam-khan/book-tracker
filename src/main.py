

from fastapi import FastAPI, Depends, HTTPException, status
from dotenv import load_dotenv, dotenv_values

from models import (Book, 
                    Author, 
                    CreateBook, 
                    CreateAuthor, CreateHistory,
                    User, 
                    Token, 
                    TokenData,
                    book_table, author_table, history_table,
                    database)
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from passlib.context import CryptContext

from typing import Optional

from jose import JWTError, jwt
from datetime import timedelta, datetime

from routers import authors as authors_router
from routers import books as books_router


load_dotenv('.env')
DATABASE_URL = dotenv_values()['DATABASE_URL']
SECRET_KEY = dotenv_values()['SECRET_KEY']
ALGORITHM = dotenv_values()['ALGORITHM']
# database = databases.Database(DATABASE_URL)



oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

app = FastAPI()

app.include_router(authors_router.router, prefix='/authors')
app.include_router(books_router.router, prefix='/books')

def verify_password(plain_password, hashed_password):
    return pwd_context.verify(plain_password, hashed_password)


def get_password_hash(password):
    return pwd_context.hash(password)

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
    user = authenticate_user(form_data.username, form_data.password)
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail='Incorrect username or password',
            headers={'WWW-Authenticate': 'Bearer'},
        )
    ACCESS_TOKEN_EXPIRE_MINUTES = int(dotenv_values()['ACCESS_TOKEN_EXPIRE_MINUTES'])
    access_token_expires = timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    access_token = create_access_token(
        data={'sub': dotenv_values()['USERNAME']}, expires_delta=access_token_expires
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


async def get_current_user(token: str = Depends(oauth2_scheme)):
    credentials_exception = HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail='Could not validate credentials',
        headers={'WWW-Authenticate': 'Bearer'},
    )

    try:
        
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        username: str = payload.get('sub')
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


@app.get('/history')
async def get_history(current_user = Depends(get_current_user)):
    query = history.select().order_by(history.c.read_at)
    return await database.fetch_all(query)

@app.post('/history')
async def get_history(create_history: CreateHistory, current_user = Depends(get_current_user)):
    query = history.insert().values(book=create_history.book, 
                                start_page=create_history.start_page, 
                                end_page=create_history.end_page, 
                                read_at=create_history.read_at if not create_history.read_at == None else datetime.utcnow()
                                )
                                
    last_record_id = await database.execute(query)
    return {**create_history.dict(), 'id': last_record_id}

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
