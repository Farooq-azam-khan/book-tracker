CREATE TABLE genre (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE author (
    id SERIAL PRIMARY KEY, 
    name TEXT UNIQUE NOT NULL
);

-- CREATE TYPE BookType AS ENUM ('Fiction', 'Non-Fiction');

CREATE TABLE book (
    id SERIAL PRIMARY KEY, 
    name TEXT UNIQUE NOT NULL, 
    total_pages INTEGER DEFAULT 1 NOT NULL CHECK (total_pages >= 1), 
    total_chapters INTEGER DEFAULT 1 NOT NULL CHECK (total_chapters >= 1),
    author INTEGER REFERENCES author(id) NOT NULL, 
    times_read INTEGER DEFAULT 0 CHECK (times_read >= 0)
);

CREATE TABLE book_genre (
    book INTEGER REFERENCES book(id),
    genre INTEGER REFERENCES genre(id)
);

CREATE TABLE franchise (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE book_franchise (
    book INTEGER REFERENCES book(id) NOT NULL ON CASCASE DELETE,
    book_order INTEGER CHECK (book_order >= 0) NOT NULL,
    franchise INTEGER REFERENCES franchise(id) NOT NULL ON CASCASE DELETE, 
    PRIMARY KEY (book, franchise, book_order)
);

CREATE TABLE book_chapters (
    book INTEGER REFERENCES book(id),
    chapter_name TEXT,
    order INTEGER,
    on_page INTEGER

);

CREATE TABLE history (
    book INTEGER REFERENCES book(id) NOT NULL,
    page_mark INTEGER NOT NULL, 
    chapter_mark INTEGER, 
    read_at DATE NOT NULL DEFAULT CURRENT_DATE
);
