module Api exposing (..)
import Types exposing (..)
import Http
import Json.Decode as D
import Json.Encode as E

import Msg exposing (..)


book_decoder : D.Decoder Book 
book_decoder = 
    D.map4 Book 
        (D.field "name" D.string) 
        (D.field "total_chapters" D.int) 
        (D.field "total_pages" D.int) 
        (D.field "author" D.int)

getBooks : Cmd Msg 
getBooks = Http.get 
            { url = "/books"
            , expect = Http.expectJson BooksGetRequest (D.list book_decoder)
            }

history_decoder : D.Decoder History 
history_decoder = 
    D.map3 History 
        (D.field "book" D.int)
        (D.field "page_mark" D.int)
        (D.field "chapter_mark" D.int)

getReadingHistory : Maybe Token -> Cmd Msg 
getReadingHistory maybe_tkn = 
        case maybe_tkn of 
            Nothing -> 
                Cmd.none 
            Just (Token tkn) -> 
                let
                    auth_header = Http.header "Authorization" ("Bearer " ++ tkn)
                in
                    Http.request 
                        { url = "/history"
                        , method = "get"
                        , headers = [auth_header]
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
    in
        E.object [bk_val, end_page_val, chapter_val]
    



sendHistoryRecord : Token -> History -> Cmd Msg 
sendHistoryRecord (Token tkn) history_record_form = 
    let
        auth_header = Http.header "Authorization" ("Bearer " ++ tkn)
    in
        Http.request 
            { url = "/history"
            , method = "post"
            , headers = [auth_header]
            , body = Http.jsonBody (encodeHistory history_record_form)
            , timeout = Nothing 
            , tracker = Nothing 
            , expect = Http.expectJson WasHistoryRecodedSuccessful (D.list history_decoder)
            }
