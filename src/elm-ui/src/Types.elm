module Types exposing (..)
-- import Time 
type alias LoginForm = 
    { username : String
    , password : String
    , show_form : Bool}

type alias Author = 
    { id : Int 
    , name : String 
    }

type alias Book = 
    { id : Int 
    , name : String
    , total_chapters : Int
    , total_pages : Int 
    , author : Int
    }


type alias History = 
    { book : Int 
    , page_mark : Int
    , chapter_mark : Int
    , read_at : Maybe String --Maybe Time.Posix
    , id : Int 
    }

type alias CreateHistory = 
    { book : Int 
    , page_mark : Int
    , chapter_mark : Int
    , show_form : Bool 
    }

type alias CreateBook = 
    { name : String 
    ,  total_pages : Int 
    , total_chapters : Int 
    , author : Int 
    -- ,  book_order : Maybe Int 
    -- , franchise : Maybe Int 
    -- , genre : Maybe Int 
    }

init_create_book : CreateBook 
init_create_book = 
    { name = ""
    ,  total_pages = 0 
    , total_chapters = 0 
    , author = 0 
    -- ,  book_order = Nothing 
    -- , franchise = Nothing 
    -- , genre = Nothing 
    }
-- TODO: login error fields 
-- type alias LoginError = 
--     { msg   : String 
--     , type_ : String 
--     , loc   : List String 
--     }

type alias BookProgress = 
    { book : Book 
    , read_before : Int 
    , page_progress : Float
    , chapter_progress : Float 
    }
    
type Token = Token String 

type alias User =
    { history_record_form : CreateHistory
    , reading_history : List History
    , create_book_form : Maybe CreateBook 
    }
    
type UserAuthentication 
    = Unknown  
    | LoggedIn Token User
    | LoggedOut LoginForm

type Close a = Close a 
