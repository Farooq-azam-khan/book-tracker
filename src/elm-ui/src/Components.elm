module Components exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Round as R
import Icons exposing (..)
import Html.Events exposing (..)
import Msg exposing (Msg)
import Types exposing (..)


are_you_sure_modal : Msg -> Close Msg -> String -> String -> Html Msg 
are_you_sure_modal action close title descrip = 
    modal_component title close <| 
        div [ class "flex flex-col items-start space-y-3 px-4 py-4 w-full max-w-md mx-auto"
            ]
            [ p [] [text descrip]
            , primary_button action (text "Yes")
            ]

primary_button : Msg -> Html Msg ->  Html Msg 
primary_button action content = 
    button 
        [ onClick action 
        , class "flex items-center justify-between space-x-1 bg-white text-gray-900 px-3 py-2 text-sm rounded-lg hover:bg-indigo-700 hover:text-indigo-100"
        ] 
        [ content
        ]


modal_component : String -> (Close Msg) -> Html Msg -> Html Msg 
modal_component title (Close close) content = 
    div 
        [class "text-white font-sans"]
        [ div [class "fixed z-20 inset-0 bg-black opacity-50"] [] 
        , div 
            [ class "mx-auto flex items-center justify-center fixed inset-0 z-30 w-screen px-10"]
            [ div 
                [ class "bg-gray-700 rounded-lg shadow-md w-full max-w-lg"]
                [ div 
                    [class "flex items-center rounded-t-lg  justify-between bg-gray-900 px-4 py-4"] 
                    [ h2 
                        [class "text-md tracking-wider font-semibold"] 
                        [text title
                        ]
                    , button 
                        [ onClick close
                        , type_ "button"
                        , class "hover:text-white border-2 hover:border-indigo-300 border-white rounded-md"
                        ] 
                        [ x_icon
                        ]
                    ]
                , content 
                ]
            
            ]
        ]


progres_bar : String -> Float -> Html Msg 
progres_bar prog_type percentage = 
    div 
        [ class "w-full" ]
        [ div [ class "flex mb-2 items-center justify-between" ]
            [ div []
                [ span [ class "text-xs font-semibold inline-block py-1 px-2 uppercase rounded-full text-indigo-600 bg-indigo-200" ]
                    [ text prog_type ]
                ]
            , div [ class "text-right" ]
                [ span [ class "text-xs font-semibold inline-block text-indigo-700" ]
                    [ text ((R.round 1 percentage) ++ "%") ]
                ]
            ]
        , div 
            [ class "overflow-hidden h-2 mb-4 text-xs flex rounded bg-indigo-200" ]
            [ div 
                [ class "shadow-none flex flex-col text-center whitespace-nowrap text-white justify-center bg-indigo-500", attribute "style" ("width:"++ String.fromFloat percentage ++"%") ]
                []
            ]
        ]

books_table : Maybe (List Author) -> List Book -> Html Msg 
books_table maybe_authors books = 
    div [ class "font-serif text-gray-900 flex justify-center flex-wrap mt-4 max-w-3xl md:max-w-5xl mx-auto" ]
        [ div [ class "w-full xl:w-8/12 mb-12 xl:mb-0 px-4" ]
            [ div [ class "relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-lg rounded" ]
                [ div [ class "rounded-t mb-0 px-4 py-3 border-0" ]
                    [ div [ class "flex flex-wrap items-center" ]
                        [ div [ class "relative w-full px-4 max-w-full flex-grow flex-1" ]
                            [ h3 [ class "font-semibold text-base text-blueGray-700" ]
                                [ text "Books" ]
                            ]
                        , div [ class "relative w-full px-4 max-w-full flex-grow flex-1 text-right" ]
                            [ button [ class "font-sans cursor-not-allowed bg-indigo-500 text-gray-300 active:bg-indigo-600 text-xs font-bold uppercase px-3 py-1 rounded outline-none focus:outline-none mr-1 mb-1", attribute "style" "transition:all .15s ease", type_ "button", attribute "diabled" "disabled" ]
                                [ text "See all" ]
                            ]
                        ]
                    ]
                , div [ class "block w-full overflow-x-auto" ]
                    [ table [ class "items-center w-full bg-transparent border-collapse" ]
                        [ thead []
                            [ tr []
                                [ th 
                                    [ class "px-6 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left" ]
                                    [ text "Book" ]
                                , th 
                                    [ class "px-6 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left" ]
                                    [ text "Author" ]
                                , th [ class "px-6 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left" ]
                                    [ text "Total Pages" ]
                                , th [ class "px-6 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left" ]
                                    [ text "Total Chapters" ]
                                ]
                            ]
                        , tbody []
                            (List.map (display_book_row maybe_authors) books)
                        ]
                    ]
                ]
            ]
    ]

display_book_row : Maybe (List Author) -> Book -> Html Msg 
display_book_row maybe_authors book =
    tr 
        []
        [ td 
            [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4" 
            ] 
            [ text book.name
            ]
        , td 
            [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4" 
            ]
            [ text <| 
                case maybe_authors of 
                    Just authors -> 
                        let 
                            author_name = List.filter (\author -> author.id == book.author) authors
                        in 
                            case List.head author_name of 
                                Nothing -> String.fromInt book.author 
                                Just author -> 
                                    author.name
                    Nothing -> String.fromInt book.author 
            ]
        , td 
            [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4" 
            ] 
            [ text <| String.fromInt book.total_pages
            ]

        , td 
            [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4" 
            ] 
            [ text <| String.fromInt book.total_chapters
            ]

        ]