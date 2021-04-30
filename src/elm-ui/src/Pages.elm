module Pages exposing (..)
import Model exposing (..)
import Msg exposing (..)
import Types exposing (..)

import Html exposing (Html, button, div, text, input, form, label, h1, ol, li)
import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(type_, placeholder, for, value, id)


loggedin_page : Model -> Html Msg 
loggedin_page model = 
    div [] 
        [text "Welcome"
        , if not model.show_create_record_form 
            then button [onClick ToggleCreateRecord] [text "Create History Record"] 
            else create_record_form model.history_record_form 

        , case model.reading_history of 
            Nothing -> 
                text "loading history..."
            Just read_hist -> 
                display_reading_history read_hist
        ]

display_reading_history : List History -> Html Msg 
display_reading_history reading_history = 
    ol  [] 
        (List.map display_single_history reading_history)


create_record_form : History -> Html Msg 
create_record_form history_form =
    form    [onSubmit CreateHistoryRecord] 
            [ label [for "book"] [text "Book"]
            -- TODO: Change to Select input filed 
            , input [value <| String.fromInt history_form.book, onInput (UpdateHistoryFormBook <<  String.toInt), id "book", placeholder "Book (id for now)", type_ "number"] []
            , label [for "page-mark"] [text "End Page"]
            , input [value <| String.fromInt history_form.page_mark, onInput (UpdateHistoryPageMark  << String.toInt), id "page-mark", placeholder "Where did you finish?"] []
            , label [for "chapter-mark"] [text "Chapter Mark"]
            , input [value <| String.fromInt history_form.chapter_mark, id "chapter-mark", placeholder "Which Chapter are you on right now?", onInput (UpdateHistoryChapterMark << String.toInt), type_ "number"] []
            , button [type_ "submit"] [text "Create Record"]
            ]

display_single_history : History -> Html Msg 
display_single_history hist = 
    li  []
        [text ( String.fromInt hist.book ++ " page:" ++ String.fromInt hist.page_mark ++ "Chapter: " ++ String.fromInt hist.chapter_mark)]




not_loggedin_page : Model -> Html Msg 
not_loggedin_page model = 
    div [] 
        [ (if model.show_login then login_form_view model.login_form  else div [] [button [onClick ToggleLogin] [text "login"]])
        , h1 [] [text "Books I am Reading"]
        , case model.books of 
            Nothing -> 
                text "loading"
            Just books -> 
                div [] [ol  [] (List.map view_book books)]

        ]

view_book : Book -> Html Msg 
view_book book = li [] [text book.name]




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