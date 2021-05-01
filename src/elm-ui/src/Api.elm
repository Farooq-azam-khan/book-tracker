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


book_progress_decoder : D.Decoder BookProgress 
book_progress_decoder = 
    D.map4 BookProgress 
        (D.field "book" book_decoder) 
        (D.field "read_before" D.int) 
        (D.field "page_progress" D.float) 
        (D.field "chapter_progress" D.float)


getBooks : Cmd Msg 
getBooks = Http.get 
            { url = "/books"
            , expect = Http.expectJson BooksGetRequest (D.list book_decoder)
            }

history_decoder : D.Decoder History 
history_decoder = 
    D.map4 History 
        (D.field "book" D.int)
        (D.field "page_mark" D.int)
        (D.field "chapter_mark" D.int)
        (D.maybe (D.field "read_at" D.string))

getBookProgress : Cmd Msg 
getBookProgress = 
    Http.get 
        { url = "/progress/active/books"
        , expect = Http.expectJson GetActiveReadingList (D.list book_progress_decoder)
        }

getReadingHistory : Token -> Cmd Msg 
getReadingHistory token = 
                    Http.request 
                        { url = "/history"
                        , method = "get"
                        , headers = [auth_header token]
                        , body = Http.emptyBody
                        , timeout = Nothing 
                        , tracker = Nothing 
                        , expect = Http.expectJson HistoryGetRequest (D.list history_decoder)
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
