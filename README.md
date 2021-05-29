# Book Tracking

## TODOS

## UI
* [ ] make it into a PWA
    * [ ] A2HS
        * [ ] need HTTPS 
        * [ ] need `manifest.json`
        * [ ] need icon for homescreen 
        * [ ] service workers registered
* [ ] integrate tailwindcss (experiment with gradient) (priority: 1)
* [ ] 'Are you Sure?' modal for deleteing books/history, etc. 
* [ ] update hisotry record form 
* [x] display book pages and chapters in history tab 
* [x] create book form 
* [ ] create author form
* [x] table of all books
* [ ] table of all authors
* [ ] when finished book make fireworks / confetti
* [ ] display *you have read x books this month/year*

### Backend 

* [x] better form input needed for record creation (          ^)
* [ ] delete routes for (book / hisotry / genre / franchise (in that order))
    * [x] history 
    * [ ] book 
    * [ ] genre 
    * [ ] francise 
* [ ] update `history/genre/franchise` routes (priority: 2.1)
* [ ] rate limit (priority: last)
* [ ] pagination and order by title of book, author name, descenting read_at for book, author, history table respectively (priority: 2)
* [x] fix form for history record creation
* [x] refactor elm-ui (priority: 1.1)
* [x] store token in localstorage(priority: 1.2)
* [x] porgress route 
* [x] update `books/author` routes 
* [x] add column / table  `book-franchise` 
    * [ ] many to many relation and book order for franchises. that way there are no null values in book table
    * [ ] can display book franchise as a table with progress on it 
* [x] add column / table `book-genre` https://blog.reedsy.com/book-genres/
    * [x] a book has a list of genres (i.e. many to many relation or list of genre ints as column)
    - pick: second options - list of ints
    * [ ] route to add list of genres to book 
    * [x] route to update list of genres
* [x] add column `contents` as `json` column
    * [x] route to add list of contents to existing book 
    * [x] route to update contents to existing book 
```elm
type Bookmark = Bookmark {name: String, page: Int}
type BookmarColumn = List Bookmark 
```
```python
calss Bookmark(BaseModel):
    name: str 
    page: int 
    book: int
'''
eg: 
[ {book:1, name:"chapter 1", page: 1},
  {book:1, name:"Part 2", page: 149}
]
'''
```
* [ ] add column read amount (default to 0). 
    * [ ] increment every time history table progresses to 100%
        - that way its a lookup when fetching instead of having to run an expensive algorithm
        - also beneficial for books read before history oldest date 
* https://schema.org/Book 
    - `BookFormatType`: `enum {AudiobookFormat, EBook, GraphicNovel, Hardcover, Paperback }`
    - `datePublished`
    - `inLanguage`, `originalLanguage`
    - `description`
    - `imageURL` (encode or url)

## Backing up datbase
- https://www.linode.com/docs/guides/how-to-back-up-your-postgresql-database/
