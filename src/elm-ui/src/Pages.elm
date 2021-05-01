module Pages exposing (..)
import Model exposing (..)
import Msg exposing (..)
import Types exposing (..)
import Html exposing (Html, button, div, text, input, form, label, h1, ol, li, select, option, strong)
import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(type_, placeholder, for, value, id, attribute)
import Round as R

import Forms exposing (login_form_view, create_record_form)

loggedin_page : Model -> Html Msg 
loggedin_page model = 
    div [] 
        [text "Welcome"
        , if not model.show_create_record_form 
            then button [onClick ToggleCreateRecord] [text "Create History Record"] 
            else create_record_form model.books model.history_record_form 

        , case model.reading_history of 
            Nothing -> 
                text "loading history..."
            Just read_hist -> 
                case model.books of 
                    Nothing -> 
                        text "Books do not exist"
                    Just books -> 
                        display_reading_history books read_hist
        ]

display_reading_history : List Book -> List History -> Html Msg 
display_reading_history books reading_history = 
    ol  [] 
        (List.map (display_single_history books) reading_history)


display_single_history :  List Book -> History  -> Html Msg 
display_single_history books hist = 
    li  []
        [ case getBookById hist.book books of 
            Nothing -> 
                text ("Book with id " ++ String.fromInt hist.book ++ "does not exist.")
            Just book -> 
                div [] 
                    [strong [] [text book.name]
                    , text (" at page:" ++ String.fromInt hist.page_mark ++" (")
                    , text ((R.round 2 (100*(toFloat hist.page_mark / toFloat book.total_pages))) ++ "%)")
                    , text (" Chapter: " ++ String.fromInt hist.chapter_mark ++ " (")
                    , text ((R.round 2 (100*(toFloat hist.chapter_mark / toFloat book.total_chapters))) ++ "%)")
                    ]
        ]


getBookById : Int -> List Book -> Maybe Book 
getBookById id books = List.head <| List.filter (\book -> book.id == id) books 


not_loggedin_page : Model -> Html Msg 
not_loggedin_page model = 
    div [] 
        [ (if model.show_login then login_form_view model.login_form  else div [] [button [onClick ToggleLogin] [text "login"]])
        , h1 [] [text "Books I am Reading"]
        , div [] (List.map book_view model.reading_list) 
        ]

book_view : BookProgress -> Html Msg 
book_view prog_book =
    div [] 
        [text (prog_book.book.name ++ " page prog: " ++ (R.round 2 (100*prog_book.page_progress)) ++ "% chap prog: " ++ (R.round 2 (100*prog_book.chapter_progress)) ++ "%")
        ]
        

view_book : Book -> Html Msg 
view_book book = li [] [text book.name]



