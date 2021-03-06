CREATE TABLE author (
    id SERIAL PRIMARY KEY, 
    name TEXT UNIQUE NOT NULL
);


CREATE TABLE book (
    id SERIAL PRIMARY KEY, 
    name TEXT UNIQUE NOT NULL, 
    total_pages INTEGER DEFAULT 1 NOT NULL CHECK (total_pages >= 1), 
    total_chapters INTEGER DEFAULT 1 NOT NULL CHECK (total_chapters >= 1),
    author INTEGER REFERENCES author(id) NOT NULL, 
    times_read INTEGER DEFAULT 0 NOT NULL CHECK (times_read >= 0),
    genre text[] not null default '{}',
    table_of_contents JSON[] not null default '{}'
);

CREATE TABLE franchise (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE book_franchise (
    book INTEGER REFERENCES book(id) ON DELETE CASCADE NOT NULL,
    book_order INTEGER CHECK (book_order >= 0) NOT NULL,
    franchise INTEGER REFERENCES franchise(id) ON DELETE CASCADE NOT NULL,  
    PRIMARY KEY (book, franchise, book_order)
);


CREATE TABLE history (
    book INTEGER REFERENCES book(id) NOT NULL,
    page_mark INTEGER NOT NULL, 
    chapter_mark INTEGER, 
    read_at DATE NOT NULL DEFAULT CURRENT_DATE
);
