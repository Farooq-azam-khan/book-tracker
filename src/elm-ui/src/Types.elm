module Types exposing (..)
-- import Time 
type alias LoginForm = 
    { username : String
    , password : String
    , show_form : Bool}

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
    --, id : Int 
    }

type alias CreateHistory = 
    { book : Int 
    , page_mark : Int
    , chapter_mark : Int
    , show_form : Bool 
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
    , reading_history : Maybe (List History)
    }
    
type UserAuthentication 
    = Unknown  
    | LoggedIn Token User
    | LoggedOut LoginForm
