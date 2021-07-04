
seed_authors = [
    'Robert Jordan',
    'Brandon Sanderson',
    'Frank Herbert',
    'George R. R. Martin',
    'H. G. Wells',
    'Mark Twain',
    'Plato',
    'Robert Louis Stevenson',
    'Alexandre Dumas',
    'Robert Jordan & Brandon Sanderson',
    'Fyodor Dostoevsky',
]

seed_genres = [
    'Fantasy',
    'Science Fiction',
    'Crime and Mystery',
]
seed_books = [
    {'name': 'The Eye of the World', 'author': 1, 'total_pages': 814, 'total_chapters': 55}, #1
    {'name': 'The Great Hunt', 'author': 1, 'total_pages': 680, 'total_chapters': 51},#2
    {'name': 'The Dragon Reborn', 'author': 1, 'total_pages': 1, 'total_chapters': 1},#3
    {'name': 'The Shadow Rising', 'author': 1, 'total_pages': 1, 'total_chapters': 1},#4
    {'name': 'The Fires of Heaven', 'author': 1, 'total_pages': 1, 'total_chapters': 1},#5
    {'name': 'Lord of Chaos', 'author': 1, 'total_pages': 1, 'total_chapters': 1},#6
    {'name': 'A Crow on Swords', 'author': 1, 'total_pages': 1, 'total_chapters': 1},#7
    {'name': 'The Path of Daggers', 'author': 1, 'total_pages': 1, 'total_chapters': 1},#8
    {'name': 'Winter''s Heart', 'author': 1, 'total_pages': 1, 'total_chapters': 1},
    {'name': 'Crossroads of Twilight', 'author': 1, 'total_pages': 1, 'total_chapters': 1},
    {'name': 'Knife of Dreams', 'author': 1, 'total_pages': 1, 'total_chapters': 1},
    {'name': 'The Gathering Storm', 'author': 10, 'total_pages': 1, 'total_chapters': 1},
    {'name': 'Towers of Midnight', 'author': 10, 'total_pages': 1, 'total_chapters': 1},
    {'name': 'A Memory of Light', 'author': 10, 'total_pages': 1, 'total_chapters': 1},
    {'name': 'New Spring', 'author': 1, 'total_pages': 1, 'total_chapters': 1},
    {'name': 'Crime and Punishment', 'author': 11, 'total_pages': 1, 'total_chapters': 1}, 
    {'name': 'A Dance with Dragons', 'author': 4, 'total_pages': 1050, 'total_chapters': 72}, #17
    {'name': 'The Final Empire', 'author': 2, 'total_pages':643, 'total_chapters': 40}, #18
    {'name': 'The Well of Ascension', 'author': 2, 'total_pages': 785, 'total_chapters': 60}, #19
    {'name': 'The Hero of Ages', 'author': 2, 'total_pages': 752, 'total_chapters': 83}, #20
]

seed_franchises = [
    'A Song of Ice and Fire', 
    'Mistborn', 
    'The Wheel of Time', 
    'Lord of the Rings'
]

seed_franchise_books = [
    {'book': 1, 'franchise': 3, 'book_order': 1},
    {'book': 2, 'franchise': 3, 'book_order': 2},
    {'book': 3, 'franchise': 3, 'book_order': 3},
    {'book': 4, 'franchise': 3, 'book_order': 4},
    {'book': 17, 'franchise': 1, 'book_order': 5}, 
    {'book': 18, 'franchise': 2, 'book_order': 1},
    {'book': 19, 'franchise': 2, 'book_order': 2},
    {'book': 20, 'franchise': 2, 'book_order': 3},
]

if __name__ == '__main__':
    for author in seed_authors:
        print(f'INSERT INTO author (name) VALUES (\'{author}\');')
        
    for genre in seed_genres:
        print(f'INSERT INTO genre (name) VALUES (\'{genre}\');')


    for book in seed_books:
        name = book['name']
        total_pages = book['total_pages'] 
        author = book['author']
        total_chapters = book['total_pages']
        print(f'INSERT INTO book (name, author, total_pages, total_chapters) VALUES (\'{name}\',{author},{total_pages},{total_chapters});')

    for franchise in seed_franchises:
        print(f'INSERT INTO franchise (name) VALUES (\'{franchise}\');')

    for franchise_book in seed_franchise_books:
        print(f'INSERT INTO book_franchise (book, franchise, book_order) VALUES ({franchise_book["book"]}, {franchise_book["franchise"]}, {franchise_book["book_order"]});')