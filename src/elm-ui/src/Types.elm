module Types exposing (..)

type alias LoginForm = {username: String, password: String}
type alias Book = 
    {name : String
    , total_chapters : Int
    , total_pages : Int 
    , author: Int
    }


type alias History = 
    { book : Int 
    , page_mark: Int
    , chapter_mark: Int
    }


-- [
--   {
--     "book": {
--       "id": 7,
--       "name": "asdf1",
--       "total_pages": 10,
--       "total_chapters": 10
--     },
--     "read_before": 2,
--     "page_progress": 0.7,
--     "chapter_progress": 0.06999999999999999
--   }
-- ]
type alias Progress = 
    { 
    }
type Token = Token String 