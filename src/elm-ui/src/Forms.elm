module Forms exposing (login_form_view, create_record_form, create_book_form)

import Html exposing (..)
import Html.Attributes exposing (attribute, type_, value, placeholder, id, for, class)
import Html.Events exposing (onSubmit, onClick, onInput)
import Svg exposing (svg, path)
import Svg.Attributes as SA exposing (d, fill, viewBox)
import Icons exposing (..)
import Msg exposing (..)
import Types exposing (..)
import Components exposing (..)

modal_preamble : Close Msg -> String -> Html Msg -> Html Msg 
modal_preamble (Close close_action) header_title inner_form  = 
    div 
        [class "text-white max-w-2xl"
        ]
        [ div [class "fixed z-20 inset-0 bg-black opacity-50"] [] 
        , div 
            [ class "mx-auto flex items-center justify-center fixed inset-0 z-30"]
            [ div 
                [ class "bg-gray-700 rounded-lg shadow-md"]
                [ div 
                    [class "flex items-center rounded-t-lg  justify-between bg-gray-900 px-2 py-2 "] 
                    [ h2 [class "text-md tracking-wider font-semibold"] [text header_title]
                    , button 
                        [ onClick close_action 
                        , type_ "button"
                        , class "hover:text-white border-2 hover:border-indigo-300 border-white rounded-md"
                        ] [x_icon]
                    ]
            
        , inner_form
                ]
            ]
        ]


author_book_field_input : String -> Msg         
author_book_field_input val = UpdateBookForm (BookAuthor (String.toInt val))

create_book_form : Maybe (List Author) -> CreateBook -> Html Msg 
create_book_form maybe_authors book_from_vals = 
    case maybe_authors of 
        Nothing -> 
            text "no authors"
        Just authors -> 
            modal_preamble (Close (UpdateBookForm ToggleBookForm)) "Create Book"
            <| form 
                [ class "flex flex-col items-start space-y-3 px-3 py-3 w-11/12 mx-auto"
                , onSubmit PostCreateBook
                ] 
                [ div 
                    [ class "flex flex-col items-start justify-between space-y-1"
                    ]
                    [ label [for "author"] [text "Author"]
                    , select 
                        [ id "author"
                        , onInput author_book_field_input
                        , value <| String.fromInt book_from_vals.author
                        , class "w-full focus:border-indigo-500 focus:border-2 rounded-md text-gray-800"
                        ]
                        (List.append [option [attribute "selected" "selected", attribute "disabled" "disabled", value "0"] [text "Choose the Author"]] (List.map authorOption authors))
                    ]
                , div 
                    [ class "flex flex-col items-start justify-between space-y-1"
                    ]
                    [ label [for "book-name"] [text "Book Name"]
                    , input 
                        [ value book_from_vals.name 
                        , onInput <| UpdateBookForm << ChangeName--book_field_name_input 
                        , class "px-2 py-2 placeholder-gray-300 text-gray-600 relative bg-white bg-white rounded text-sm border-0 shadow outline-none focus:outline-none focus:ring w-full"
                        , type_ "text"
                        ] 
                        []
                    ]
                , div 
                    [ class "flex flex-col items-start justify-between space-y-1"
                    ]
                    [ label [for "tot-pages"] [text "Total Pages"]
                    , input 
                        [ id "tot-pages"
                        , value <| String.fromInt book_from_vals.total_pages
                        , onInput <| (UpdateBookForm << PageCount) << String.toInt 
                        , class "px-2 py-2 placeholder-gray-300 text-gray-600 relative bg-white bg-white rounded text-sm border-0 shadow outline-none focus:outline-none focus:ring w-full"
                        ] 
                        []
                    ]
                , div 
                    [ class "flex flex-col items-start justify-between space-y-1"
                    ]
                    [ label [for "tot-ch"] [text "Total Chapters"]
                    , input 
                        [id "tot-ch"
                        , onInput <| (UpdateBookForm << ChapterCount) << String.toInt
                        , value <| String.fromInt book_from_vals.total_chapters
                        , class "px-2 py-2 placeholder-gray-300 text-gray-600 relative bg-white bg-white rounded text-sm border-0 shadow outline-none focus:outline-none focus:ring w-full"
                        ] 
                        []

                    ]
                , button 
                    [class "focus:ring-2 inline-block ml-auto flex items-center justify-between px-3 py-2 rounded-md bg-indigo-500 hover:bg-indigo-700 hover:text-white shadow-lg"
                    , type_ "submit"
                    ] 
                    [ span [] [text "Create Book"]] 
                ]
    





create_record_form : Maybe (List Book) -> CreateHistory -> Html Msg 
create_record_form maybe_books history_form =
    case maybe_books of 
        Nothing -> 
            -- TODO: check if books can be stored in local storage
            text "sorry, you cannot add records at this moment. books are not loaded"
        Just book_list ->
            div 
                [class "text-white max-w-2xl"
                ]
                [ div [class "fixed z-20 inset-0 bg-black opacity-50"] [] 
                , div 
                    [ class "mx-auto flex items-center justify-center fixed inset-0 z-30"]
                    [ div 
                        [ class "bg-gray-700 rounded-lg shadow-md"]
                        [ div 
                            [class "flex items-center rounded-t-lg  justify-between bg-gray-900 px-2 py-2 "] 
                            [ h2 [class "text-md tracking-wider font-semibold"] [text "Create Record"]
                            , button 
                                [ onClick ToggleCreateRecord
                                , type_ "button"
                                , class "hover:text-white border-2 hover:border-indigo-300 border-white rounded-md"
                                ] [x_icon]
                            ]
                    
                , form    
                    [onSubmit CreateHistoryRecord, class "flex flex-col items-start space-y-3 px-3 py-3 w-11/12 mx-auto"] 
                    [ div 
                        [ class "flex flex-col items-start justify-between space-y-1"
                        ] 
                        [ label [for "book"] [text "Book"]
                        , select 
                            [id "book"
                            , onInput (UpdateHistoryFormBook << String.toInt)
                            , value <| String.fromInt history_form.book
                            , class "w-full focus:border-indigo-500 focus:border-2 rounded-md text-gray-800"
                            ] 
                            (List.append [option [attribute "selected" "selected", attribute "disabled" "disabled", value "0"] [text "Choose a Book"]] (List.map bookOption book_list))
                            
                        ]    
                    , if history_form.book == 0
                        then  div  [] [] 
                        else 
                            div [class "flex flex-col items-start space-y-3"]
                                [ div 
                                    [class "flex flex-col items-start justify-between space-y-1"] 
                                    [label [for "page-mark"] [text "End Page"]
                                    , input 
                                        [ value <| String.fromInt history_form.page_mark
                                        , id "page-mark"
                                        , onInput (UpdateHistoryPageMark  << String.toInt)
                                        , placeholder "Where did you finish?"
                                        , type_ "number"
                                        , class "w-full focus:border-indigo-500 focus:border-2 rounded-md text-gray-800"
                                        ] 
                                        []
                                    ]
                                , div 
                                    [class "flex flex-col items-start justify-between space-y-1"] 
                                    [label [for "chapter-mark"] [text "Chapter Mark"]
                                    , input 
                                        [value <| String.fromInt history_form.chapter_mark
                                        , id "chapter-mark"
                                        , onInput (UpdateHistoryChapterMark << String.toInt)
                                        , placeholder "Which Chapter are you on right now?"
                                        , type_ "number"
                                        , class "w-full focus:border-indigo-500 focus:border-2 rounded-md text-gray-800"
                                        ] 
                                        []
                                    ]
                                , button 
                                    [class "focus:ring-2 inline-block ml-auto flex items-center justify-between px-3 py-2 rounded-md bg-indigo-500 hover:bg-indigo-700 hover:text-white shadow-lg"
                                    , type_ "submit"
                                    ] 
                                    [ span [] [text "Create Record"]]
                                ]
                    ]
                ]
                ]
                ]
bookOption : Book -> Html Msg 
bookOption book = option [value <| String.fromInt book.id] [text book.name]

authorOption : Author -> Html Msg 
authorOption author = option [value <| String.fromInt author.id] [text author.name]

login_form_view : LoginForm -> Html Msg 
login_form_view login_form = 
    div [class "text-white"]
        [ div [class "fixed z-20 inset-0 bg-black opacity-50"] []
        , div [ class "mx-auto flex items-center justify-center fixed inset-0 z-30 w-screen px-10"]
        [ div [class "bg-gray-700 rounded-lg shadow-md w-full max-w-lg"] 
        [ div 
            [class "flex items-center rounded-t-lg  justify-between bg-gray-900 px-4 py-4"] 
            [ h2 [class "text-md tracking-wider font-semibold"] [text "Login"]
            , button 
                    [ onClick ToggleLogin
                    , type_ "button"
                    , class "hover:text-white border-2 hover:border-indigo-300 border-white rounded-md"
                    ] [x_icon]
            ]
        , form 
            [onSubmit LoginAction
            , class "flex flex-col items-start space-y-3 px-4 py-4 w-full max-w-md mx-auto"
            ] 
            [ div 
                [class "flex flex-col items-start justify-between space-y-3 w-full"] 
                [label [for "username"] [text "Username"]
                , input [id "username"
                        , type_ "text"
                        , placeholder "Username"
                        , attribute "autfocus" "true"
                        , value login_form.username
                        , onInput UpdateUserName
                        , class "px-2 py-2 placeholder-gray-300 text-gray-600 relative bg-white bg-white rounded text-sm border-0 shadow outline-none focus:outline-none focus:ring w-full"
                        ] []
                ]
            , div 
                [class "flex flex-col items-start justify-between space-y-3 w-full"] 
                [ label [for "password"] [text "Password"]
                , input [id "password"
                        , type_ "password"
                        , placeholder "Password"
                        , value login_form.password
                        , onInput UpdatePassword
                        , class "px-2 py-2 placeholder-gray-300 text-gray-600 relative bg-white bg-white rounded text-sm border-0 shadow outline-none focus:outline-none focus:ring w-full"
                        ] []
                ]
            
            
            , div 
                [class "w-full"]
                [ button 
                    [class "mt-4 flex items-center justify-between focus:ring-2 inline-block mr-auto  px-3 py-2 rounded-md bg-gradient-to-r from-indigo-500 via-indigo-600 to-indigo-500 hover:from-indigo-500 hover:to-indigo-500 hover:text-white shadow-lg"
                    , type_ "submit"
                    ] 
                    [ span [] [login_icon "w-6 h-6"]
                    , span [] [text "Login"]
                    ]
                ]
            ]
        ]
        ]
        ]