module Pages.Home exposing (home_view)
import Model exposing (..)
import Msg exposing (..)
import Types exposing (..)
import Html exposing (Html, button, div, text, input, form, 
                    label, h1, ol, li, select, option, strong, span, h2, h3, p,
                    table, i, tbody, thead, td, th, tr)
import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(attribute, class)
import Round as R

import Forms exposing (login_form_view)


login_button : Html Msg 
login_button = 
    div 
        [class "fixed z-10 top-0 right-0 mt-2 mr-2"] 
        [ button 
            [onClick ToggleLogin, class "bg-white text-gray-900 px-3 py-2 text-sm rounded-lg"] 
            [text "login"]
        ]

home_view : Model -> Html Msg 
home_view model = 
    div [class "space-y-3"] 
        [ (if model.show_login then login_form_view model.login_form  else login_button)
        , h1 [class "text-2xl font-bold tracking-wide text-center"] [text "Books I am Reading"]
        , div [class "grid grid-flow-row grid-cols-1 sm:grid-cols-2 sm:gap-x-4 gap-y-4 mx-auto max-w-4xl"] (List.map book_view model.reading_list) 
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



