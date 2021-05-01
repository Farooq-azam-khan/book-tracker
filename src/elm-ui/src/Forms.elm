module Forms exposing (login_form_view, create_record_form)

import Html exposing (..)
import Html.Attributes exposing (attribute, type_, value, placeholder, id, for)
import Html.Events exposing (onSubmit, onClick, onInput)

import Msg exposing (..)
import Types exposing (..)


create_record_form : Maybe (List Book) -> History -> Html Msg 
create_record_form maybe_books history_form =
    case maybe_books of 
        Nothing -> 
            -- TODO: check if books can be stored in local storage
            text "sorry, you cannot add records at this moment. books are not loaded"
        Just book_list -> 
            form    [onSubmit CreateHistoryRecord
                    ] 
                    [ button [type_ "button", onClick ToggleCreateRecord] [text "x"]
                    , label [for "book"] [text "Book"]
                    , select [id "book", onInput (UpdateHistoryFormBook << String.toInt)] 
                    ( if history_form.book == 0 
                        then 
                        (List.append [option [attribute "selected" "selected", attribute "disabled" "disabled", value "0"] [text "Choose a Book"]] (List.map bookOption book_list))
                        else 
                        (List.map bookOption book_list)
                    )
                    
                    , if history_form.book == 0
                        then  div  [] [] 
                        else 
                            div []
                            [ label [for "page-mark"] [text "End Page"]
                            , input [value <| String.fromInt history_form.page_mark, onInput (UpdateHistoryPageMark  << String.toInt), id "page-mark", placeholder "Where did you finish?"] []
                            , label [for "chapter-mark"] [text "Chapter Mark"]
                            , input [value <| String.fromInt history_form.chapter_mark, id "chapter-mark", placeholder "Which Chapter are you on right now?", onInput (UpdateHistoryChapterMark << String.toInt), type_ "number"] []
                            , button [type_ "submit"] [text "Create Record"]
                            ]
                    ]

bookOption : Book -> Html Msg 
bookOption book = option [value <| String.fromInt book.id] [text book.name]


login_form_view : LoginForm -> Html Msg 
login_form_view login_form = form 
                            [onSubmit LoginAction] 
                            [ label [for "username"] [text "Username"]
                            , input [id "username"
                                    , type_ "text"
                                    , placeholder "Username"
                                    , value login_form.username
                                    , onInput UpdateUserName
                                    ] []
                            , label [for "password"] [text "Password"]
                            , input [id "password"
                                    , type_ "password"
                                    , placeholder "Password"
                                    , value login_form.password
                                    , onInput UpdatePassword
                                    ] []
                            , button [type_ "button", onClick ToggleLogin] [text "x"]
                            , button [type_ "submit"] [text "Login"]
                            ]