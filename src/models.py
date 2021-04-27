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