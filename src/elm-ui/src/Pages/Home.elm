module Pages.Home exposing (home_view)
import Model exposing (..)
import Msg exposing (..)
import Types exposing (..)
import Html exposing (Html, button, div, text, input, form, 
                    label, h1, ol, li, select, option, strong, span, h2, h3, p,
                    table, i, tbody, thead, td, th, tr, ol, li)
import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(attribute, class)
import Round as R
import Components exposing (books_table, progress_bar)
import LoginForm exposing (login_form_view)
import Icons exposing (..)

login_button :  Html Msg 
login_button  = 
    button 
        [ onClick ToggleLogin
        , class "inline-flex items-center space-x-2 text-lg justify-between bg-indigo-100 text-indigo-900 font-semibold px-3 py-2 rounded-lg"
        ] 
        [ span [] [login_icon "w-5 h-5"]
        , span [] [text "login"]
        ]

home_view_actions_card : Model -> Html Msg
home_view_actions_card model = 
    div 
        [ class "max-w-3xl mt-3 md:max-w-5xl mx-auto px-3 overflow-x-hidden overflow-y-auto justify-center items-center"]
        [ div 
            [ class "relative" ]
            [ div 
                [ class "border-0 rounded-lg shadow-lg relative flex flex-col w-full bg-white outline-none focus:outline-none" ]
                [ div 
                    [ class "flex items-start justify-between p-5 border-b border-solid border-blueGray-200 rounded-t" ]
                    [ h3 
                        [ class "text-indigo-500 text-xl font-semibold" ]
                        [ text "Actions" ]
                    ]
                , div 
                    [ class "relative p-6 flex-auto text-gray-800" ]
                    [ case model.user of 
                        Unknown -> text ""
                        LoggedIn _ _ -> text ""
                        LoggedOut login_form ->  if login_form.show_form then login_form_view login_form else login_button  
                    ]
                ]
            ]
        ] 
home_view : Model -> Html Msg 
home_view model = 
    div 
        [] 
        [ if List.length model.reading_list == 0  then
            home_view_actions_card model 
    else 
    div [class "space-y-4"] 
        [ case model.user of 
            Unknown -> text ""
            LoggedIn _ _ -> text ""
            LoggedOut login_form -> 
                if login_form.show_form then login_form_view login_form else login_button       
        ]
        , case model.books of 
            Nothing -> 
                text ""
            Just books -> 
                books_table model.authors books   
    ]
    

pluralize : Int -> String -> String -> String 
pluralize amnt singular_word plural_word =
    if amnt == 1 then singular_word else plural_word

book_view : BookProgress -> Html Msg 
book_view prog_book =
    div [class "flex flex-col space-y-3 px-3 py-4 rounded-md shadow-md text-gray-900 bg-white"] 
        [ div 
            [ class "flex flex-col sm:flex-row sm:items-center justify-between"] 
            [ h3 [class "text-xl sm:text-2xl font-semibold tracking-wide capitalize"] [text prog_book.book.name]
            , div 
                [] 
                [ span 
                    [class "rounded-full px-2 py-1 font-sans text-xs bg-indigo-100 text-indigo-900"
                    ] 
                    [text <| ("read " ++ String.fromInt prog_book.read_before ++ pluralize prog_book.read_before " time" " times")
                    ]
                ]
        ]
        , div 
            [class "flex flex-col sm:flex-row space-x-3 justify-between items-center"] 
            [progress_bar "page" (100*prog_book.page_progress)
            , progress_bar "chapter" (100*prog_book.chapter_progress)
            ]
        ]
        

