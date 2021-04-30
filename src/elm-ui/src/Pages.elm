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
            , input [value <| String.fromInt history_form.book, onInput (UpdateHistoryFormBook <<  String.toInt), id "book", placeholder "Book (id for now)", type_ "number"] [] -- TODO: will be a dropdown
            , label [for "start page"] [text "Start Page"]
            , case history_form.start_page of
                Nothing -> 
                    input [value "-1", onInput (UpdateHistoryStartPage <<  String.toInt), id "start page", type_ "number", placeholder "Which page did you start reading?"] []
                Just start_page -> 
                    input [value <| String.fromInt start_page, onInput (UpdateHistoryStartPage <<  String.toInt), id "start page", type_ "number", placeholder "Which page did you start reading?"] []
            , label [for "end page"] [text "End Page"]
            , input [value <| String.fromInt history_form.end_page, onInput (UpdateHistoryEndPage  << String.toInt), id "end page", placeholder "Where did you finish?"] []
            , button [type_ "submit"] [text "Create Record"]
            ]

display_single_history : History -> Html Msg 
display_single_history hist = 
    li  [] 
        [text ( String.fromInt hist.book ++ "ended at:" ++ String.fromInt hist.end_page)]