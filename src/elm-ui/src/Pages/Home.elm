module Pages.Home exposing (loggedin_page, not_loggedin_page)
import Model exposing (..)
import Msg exposing (..)
import Types exposing (..)
import Html exposing (Html, button, div, text, input, form, label, h1, ol, li, select, option, strong, span, h3, p)
import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(type_, placeholder, for, value, id, attribute, class)
import Round as R

import Forms exposing (login_form_view, create_record_form)

loggedin_page : Model -> Html Msg 
loggedin_page model = 
    div [] 
        [ if not model.show_create_record_form 
            then text ""
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
        , div 
            [class "fixed z-10 top-0 right-0 mt-2 mr-2"] 
            [ div 
                [class "flex items-center space-x-3"] 
                [ create_history_record_button
                , logout_button
                ]
            ]
        ]

create_history_record_button : Html Msg 
create_history_record_button = 
    button 
        [onClick ToggleCreateRecord, class "bg-white text-gray-900 px-3 py-2 text-sm rounded-lg hover:bg-red-700 hover:text-red-100"] 
        [text "Create History Record"]
        

logout_button : Html Msg 
logout_button = 
    button 
        [onClick LogoutAction, class "bg-white text-gray-900 px-3 py-2 text-sm rounded-lg hover:bg-indigo-700 hover:text-indigo-100"] 
        [text "logout"]

display_reading_history : List Book -> List History -> Html Msg 
display_reading_history books reading_history = 
    div  [class "grid grid-cols-1"] 
        (List.map (display_single_history books) reading_history)


display_single_history :  List Book -> History  -> Html Msg 
display_single_history books hist = 
    div  []
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

login_button : Html Msg 
login_button = 
    div 
        [class "fixed z-10 top-0 right-0 mt-2 mr-2"] 
        [ button 
            [onClick ToggleLogin, class "bg-white text-gray-900 px-3 py-2 text-sm rounded-lg"] 
            [text "login"]
        ]

not_loggedin_page : Model -> Html Msg 
not_loggedin_page model = 
    div [class "space-y-3"] 
        [ (if model.show_login then login_form_view model.login_form  else login_button)
        , h1 [class "text-2xl font-bold tracking-wide text-center"] [text "Books I am Reading"]
        , div [class "grid grid-flow-row grid-cols-1 gap-y-4"] (List.map book_view model.reading_list) 
        ]

progres_bar : String -> Float -> Html Msg 
progres_bar prog_type percentage = 
    div 
        [ class "w-1/2 relative pt-1" ]
        [ div [ class "flex mb-2 items-center justify-between" ]
            [ div []
                [ span [ class "text-xs font-semibold inline-block py-1 px-2 uppercase rounded-full text-indigo-600 bg-indigo-200" ]
                    [ text (prog_type  ++ "      ")]
                ]
            , div [ class "text-right" ]
                [ span [ class "text-xs font-semibold inline-block text-indigo-700" ]
                    [ text ((R.round 1 percentage) ++ "%      ") ]
                ]
            ]
        , div 
            [ class "overflow-hidden h-2 mb-4 text-xs flex rounded bg-indigo-200" ]
            [ div 
                [ class "shadow-none flex flex-col text-center whitespace-nowrap text-white justify-center bg-indigo-500", attribute "style" ("width:"++ String.fromFloat percentage ++"%") ]
                []
            ]
        ]

lorem : String
lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in vehicula sapien, in sollicitudin orci. "
book_view : BookProgress -> Html Msg 
book_view prog_book =
    div [class "flex flex-col space-y-3 px-3 py-4 rounded-md shadow-md text-gray-900 bg-white"] 
        [ h3 [class "text-xl font-semibold tracking-wide capitalize"] [text prog_book.book.name]
        
        , p [class "text-gray-600 max-w-md text-md mt-2"] [text lorem]
        , div 
            [class "flex space-x-3 justify-between items-center"] 
            [progres_bar "page" (100*prog_book.page_progress)
            , progres_bar "chapter" (100*prog_book.chapter_progress)
            ]
        ]
        

view_book : Book -> Html Msg 
view_book book = li [] [text book.name]



