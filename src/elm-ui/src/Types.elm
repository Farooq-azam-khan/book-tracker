module Types exposing (..)

type alias LoginForm = {username: String, password: String}
type alias Book = {name : String, total_chapters : Int, author: Int}


type alias History = 
    { book : Int 
    , start_page : Maybe Int 
    , end_page: Int
    }

type Token = Token String 