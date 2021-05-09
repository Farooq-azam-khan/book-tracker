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
* [ ] display book pages and chapters in history tab 

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
* [x] add column / table `book-genre` https://blog.reedsy.com/book-genres/

* https://schema.org/Book 
    - `BookFormatType`: `enum {AudiobookFormat, EBook, GraphicNovel, Hardcover, Paperback }`
    - `datePublished`
    - `inLanguage`, `originalLanguage`
    - `description`
    - `imageURL` (encode or url)

## Backing up datbase
- https://www.linode.com/docs/guides/how-to-back-up-your-postgresql-database/
