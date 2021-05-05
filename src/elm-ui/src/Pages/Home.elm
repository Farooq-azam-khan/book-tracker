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
import Components exposing (..)
import Forms exposing (login_form_view)
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

home_view : Model -> Html Msg 
home_view model = 
    if List.length model.reading_list == 0 
    then
    div [ class "px-3 overflow-x-hidden overflow-y-auto justify-center items-center"]
    [ div [ class "relative w-auto my-6 mx-auto max-w-3xl" ]
        [ div [ class "border-0 rounded-lg shadow-lg relative flex flex-col w-full bg-white outline-none focus:outline-none" ]
            [ div [ class "flex items-start justify-between p-5 border-b border-solid border-blueGray-200 rounded-t" ]
                [ h3 [ class "text-indigo-500 text-xl font-semibold" ]
                    [ text "Recently Read Books" ]
                ]
            , div [ class "relative p-6 flex-auto text-gray-800" ]
                [ case model.user of 
                    Unknown -> text ""
                    LoggedIn _ _ -> text ""
                    LoggedOut login_form -> 
                        if login_form.show_form then login_form_view login_form else login_button 
                , p [ class "my-3 text-md leading-relaxed" ]
                    [ text "Currently I do not have any progress to share about the books I am reading"] -- Here is a list of books I have read recently." ]
                , case model.books of 
                    Nothing -> 
                        text ""
                    Just books -> 
                        div [] 
                            [ p [] [text "Below are a list of books I have read recently."]
                            , ol [class "list-disc text-indigo-500"] [li [] (List.map (\book -> li [] [text book.name]) <| List.take 5 books)]
                            ]
                ]
            
            ]
        ]
        
    ] 
    else 
    div [class "space-y-4"] 
        [ case model.user of 
            Unknown -> text ""
            LoggedIn _ _ -> text ""
            LoggedOut login_form -> 
                if login_form.show_form then login_form_view login_form else login_button 
        , h1 [class "text-3xl font-bold tracking-wide text-center text-white"] [text "Books I am Reading"]
        ,  div  [ class "grid grid-flow-row grid-cols-1 gap-y-3 max-w-4xl mx-auto font-serif"
                ] 
                (List.map book_view model.reading_list) 
        , case model.books of 
            Nothing -> 
                text ""
            Just books -> 
                div [class "px-3 py-4 bg-white rounded-md relative w-auto my-6 mx-auto max-w-4xl"] 
                    [ p [] [text "Below are a list of books I have read recently."]
                    , ol [class "text-indigo-500"] [li [] (List.map (\book -> li [] [text book.name]) <| List.take 5 books)]
                    ]
            
                
        ]
    



lorem : String
lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in vehicula sapien, in sollicitudin orci. "
book_view : BookProgress -> Html Msg 
book_view prog_book =
    div [class "flex flex-col space-y-3 px-3 py-4 rounded-md shadow-md text-gray-900 bg-white"] 
        [ div 
            [ class "flex flex-col sm:flex-row sm:items-center justify-between"] 
            [ h3 [class "text-xl sm:text-2xl font-semibold tracking-wide capitalize"] [text prog_book.book.name]
        
            , p [class "text-gray-600 max-w-md text-md mt-2"] [text lorem]
        ]
        , div 
            [class "flex flex-col sm:flex-row space-x-3 justify-between items-center"] 
            [progres_bar "page" (100*prog_book.page_progress)
            , progres_bar "chapter" (100*prog_book.chapter_progress)
            ]
        ]
        

