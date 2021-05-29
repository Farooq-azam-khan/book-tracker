from pydantic import BaseModel, validator
from typing import Optional
# import datetime 
from typing import List 

class User(BaseModel):
    username: str 
    password: str 

class Token(BaseModel):
    access_token: str 
    token_type: str 

class TokenData(BaseModel):
    username: Optional[str] = None 



class TableOfContent(BaseModel):
    name: str 
    page: int 

class CreateBook(BaseModel):
    name: str
    total_pages: int
    total_chapters: int
    author: int
    genres: Optional[List[int]]
    contents: Optional[List[TableOfContent]]

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
    
    
class Book(CreateBook):
    id: int 


class UpdateBook(CreateBook):
    name: Optional[str]
    total_pages: Optional[int]
    total_chapters: Optional[int]
    author: Optional[int]



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
    nationality: Optional[str]

class UpdateAuthor(CreateAuthor):
    name: Optional[str]


class Author(CreateAuthor):
    id: int 


class CreateHistory(BaseModel):
    book: int 
    page_mark: int
    chapter_mark: int
    read_at: Optional[str]

    # TODO: validate page_mark and chapter_mark 
    # against previous entries
    # keep in mind that the book might have been read before 
    # and it is being read a second(or third, etc.) time 

class History(BaseModel):
    id: int 
    book: int 
    start_page: Optional[int]
    end_page: int

