module Api exposing (..)
import Types exposing (..)
import Http
import Json.Decode as D
import Json.Encode as E

import Msg exposing (..)


auth_header : Token -> Http.Header
auth_header (Token tkn) = Http.header "Authorization" ("Bearer " ++ tkn)


book_decoder : D.Decoder Book 
book_decoder = 
    D.map5 Book 
        (D.field "id" D.int )
        (D.field "name" D.string) 
        (D.field "total_chapters" D.int) 
        (D.field "total_pages" D.int) 
        (D.field "author" D.int)

author_decoder : D.Decoder Author 
author_decoder = 
    D.map2 Author 
        (D.field "id" D.int)
        (D.field "name" D.string)

book_progress_decoder : D.Decoder BookProgress 
book_progress_decoder = 
    D.map4 BookProgress 
        (D.field "book" book_decoder) 
        (D.field "read_before" D.int) 
        (D.field "page_progress" D.float) 
        (D.field "chapter_progress" D.float)


getBooks : Cmd Msg 
getBooks = 
    Http.get 
        { url = "/books/"
        , expect = Http.expectJson BooksGetRequest (D.list book_decoder)
        }

get_authors : Cmd Msg 
get_authors = 
    Http.get
        { url = "/authors"
        , expect = Http.expectJson AuthorsGetRequest (D.list author_decoder)
        } 


history_decoder : D.Decoder History 
history_decoder = 
    D.map5 History 
        (D.field "book" D.int)
        (D.field "page_mark" D.int)
        (D.field "chapter_mark" D.int)
        (D.maybe (D.field "read_at" D.string))
        (D.field "id" D.int)

getBookProgress : Cmd Msg 
getBookProgress = 
    Http.get 
        { url = "/progress/active/books"
        , expect = Http.expectJson GetActiveReadingList (D.list book_progress_decoder)
        }

getReadingHistory : Token -> Cmd Msg 
getReadingHistory token = 
    Http.request 
        { url = "/history/"
        , method = "get"
        , headers = [auth_header token]
        , body = Http.emptyBody
        , timeout = Nothing 
        , tracker = Nothing 
        , expect = Http.expectJson HistoryGetRequest (D.list history_decoder)
        }


sendCreateBookPostRequest : Token -> CreateBook -> Cmd Msg 
sendCreateBookPostRequest token book_values =
    Http.request 
        { url = "/books/"
        , method = "post"
        , headers = [auth_header token]
        , body = Http.jsonBody (encodeCreateBook book_values)
        , timeout = Nothing 
        , tracker = Nothing 
        , expect = Http.expectJson CreateBookRequest book_decoder
        }


deleteHistory : Token -> Int -> Cmd Msg 
deleteHistory token hist_id = 
    Http.request
        { url = "/history/" ++ String.fromInt hist_id
        , method = "delete"
        , headers = [auth_header token]
        , body = Http.emptyBody
        , timeout = Nothing 
        , tracker = Nothing 
        , expect = Http.expectJson HistoryDeleteRequest D.int
        }

sendLoginRequest : LoginForm -> Cmd Msg 
sendLoginRequest login_form = 
        Http.post 
            { url = "/token"
            , body = Http.multipartBody [ Http.stringPart "username" login_form.username
                                        , Http.stringPart "password" login_form.password
                                        ]
            , expect = Http.expectJson LoginSuccessful token_decoder
            }


token_decoder : D.Decoder String
token_decoder = D.field "access_token" D.string



encodeHistory : History -> E.Value 
encodeHistory history_record_form =
    let
        bk_val = ("book", E.int history_record_form.book)
        end_page_val = ("page_mark", E.int history_record_form.page_mark)
        chapter_val = ("chapter_mark", E.int history_record_form.chapter_mark)
        read_at = ("read_at", E.string (Maybe.withDefault "" history_record_form.read_at))
    in
        E.object [bk_val, end_page_val, chapter_val]
    

encodeCreateHistory : CreateHistory -> E.Value 
encodeCreateHistory history_record_form =
    let
        bk_val = ("book", E.int history_record_form.book)
        end_page_val = ("page_mark", E.int history_record_form.page_mark)
        chapter_val = ("chapter_mark", E.int history_record_form.chapter_mark)
    in
        E.object [bk_val, end_page_val, chapter_val]


-- total_pages: int
--     total_chapters: int
--     author: int
-- book_order: Optional[int]
--     franchise: Optional[int]
--     genre: Optional[int]

encodeCreateBook : CreateBook -> E.Value 
encodeCreateBook book_form = 
    let 
        bk_name = ("name", E.string book_form.name)
        tot_pages = ("total_pages", E.int book_form.total_pages)
        tot_chapters = ("total_chapters", E.int book_form.total_chapters)
        author_id = ("author", E.int book_form.author)
        book_order = case book_form.book_order of 
                        Just val -> ("book_order", E.int val)
                        Nothing -> ("book_order", E.null)
        franchise = case book_form.book_order of 
                        Just val -> ("franchise", E.int val)
                        Nothing -> ("franchise", E.null)
        genre = case book_form.genre of 
                        Just val -> ("genre", E.int val)
                        Nothing -> ("genre", E.null)
    in 
        E.object [bk_name, tot_pages, tot_chapters, author_id, book_order, franchise, genre]


sendHistoryRecord : Token -> CreateHistory -> Cmd Msg 
sendHistoryRecord token history_record_form = 
        Http.request 
            { url = "/history"
            , method = "post"
            , headers = [auth_header token]
            , body = Http.jsonBody (encodeCreateHistory history_record_form)
            , timeout = Nothing 
            , tracker = Nothing 
            , expect = Http.expectJson WasHistoryRecodedSuccessful (D.list history_decoder)
            }
