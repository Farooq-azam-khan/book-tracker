from fastapi import APIRouter, HTTPException
from src.models import author_table, database, book_genre_table, book_table, history_table


from sqlalchemy.dialects import postgresql


router = APIRouter()


async def a_book_progress(book_id: int):
    query = '''
        SELECT * FROM history 
        INNER JOIN 
            book
        ON
            book.id = history.book
        WHERE 
            book.id = :book_id
    '''

    # print(query.compile(dialect=postgresql.dialect()))
    book_reading_progress = await database.fetch_all(query=query, values={'book_id': book_id})
    if len(book_reading_progress) == 0:
        return {}
        # raise HTTPException(status_code=400, detail='Book reading record does not exist')

    first_record = dict(book_reading_progress[0])
    total_pages = first_record['total_pages']
    total_chapters = first_record['total_chapters']
    ret = {
        'book': {
            'id': first_record['book'], 
            'name': first_record['name'], 
            'total_pages': total_pages, 
            'total_chapters': total_chapters, 
        }, 
        'read_before': 0,
        'page_progress': 0,
        'chapter_progress': 0
    }
    for bk_prog in book_reading_progress:
        vl = dict(bk_prog)
        
        page_mark = vl['page_mark']
        if page_mark == total_pages:
            ret['page_progress'] = 0
            ret['chapter_progress'] = 0
            ret['read_before'] += 1
        else:
            ret['page_progress'] = vl['page_mark']
            ret['chapter_progress'] = vl['chapter_mark']
        

    ret['page_progress'] = ret['page_progress'] / ret['book']['total_pages']
    ret['chapter_progress'] = ret['page_progress'] / ret['book']['total_chapters']

    return ret

@router.get('/active/books')
async def get_acitve_book_progess():
    print('getting active')
    all_prog = await all_book_progress()
    non_zero_prog = []
    for progbk in all_prog:
        if progbk['page_progress'] > 0:
            non_zero_prog.append(progbk)

    return non_zero_prog


@router.get('/{book_id}')
async def get_book_progess(book_id: int):
    book_prog = await a_book_progress(book_id)
    if book_prog == {}:
        raise HTTPException(status_code=400, detail='Book reading record does not exist')
    return book_prog

async def all_book_progress():
    query = book_table.select()
    all_books = await database.fetch_all(query)
    all_book_progs = [] 
    for bk in all_books:
        val = dict(bk)
        book_prog = await a_book_progress(val['id'])
        if not (book_prog == {}):
            all_book_progs.append(book_prog)

    return all_book_progs

@router.get('/')
async def get_book_progess():
    return await all_book_progress()



    
