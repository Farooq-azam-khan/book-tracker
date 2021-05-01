module Forms exposing (login_form_view, create_record_form)

import Html exposing (..)
import Html.Attributes exposing (attribute, type_, value, placeholder, id, for, class)
import Html.Events exposing (onSubmit, onClick, onInput)
import Svg exposing (svg, path)
import Svg.Attributes as SA exposing (d, fill, viewBox)

import Msg exposing (..)
import Types exposing (..)

create_record_form : Maybe (List Book) -> CreateHistory -> Html Msg 
create_record_form maybe_books history_form =
    case maybe_books of 
        Nothing -> 
            -- TODO: check if books can be stored in local storage
            text "sorry, you cannot add records at this moment. books are not loaded"
        Just book_list ->
            div 
                []
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
                        [class "flex flex-col items-start justify-between space-y-1"] 
                        [ label [for "book"] [text "Book"]
                        , select 
                            [id "book"
                            , onInput (UpdateHistoryFormBook << String.toInt)
                            , class "w-full focus:border-indigo-500 focus:border-2 rounded-md text-gray-800"
                            ] 
                            ( if history_form.book == 0 
                                then 
                                (List.append [option [attribute "selected" "selected", attribute "disabled" "disabled", value "0"] [text "Choose a Book"]] (List.map bookOption book_list))
                                else 
                                (List.map bookOption book_list)
                            )
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


x_icon = 
    svg [ SA.class "w-5 h-5", SA.fill "none", attribute "stroke" "currentColor", SA.viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
    [ path [ SA.d "M6 18L18 6M6 6l12 12", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
        []
    ]

login_icon = 
    svg [ SA.class "w-6 h-6", fill "none", attribute "stroke" "currentColor", viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
    [ path [ d "M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
        []
    ]
login_form_view : LoginForm -> Html Msg 
login_form_view login_form = 
    div []
        [ div [class "fixed z-20 inset-0 bg-black opacity-50"] []
        , div [ class "mx-auto flex items-center justify-center fixed inset-0 z-30"]
        [ div [class "bg-gray-700 rounded-lg shadow-md"] 
        [ div 
            [class "flex items-center rounded-t-lg  justify-between bg-gray-900 px-2 py-2 "] 
            [ h2 [class "text-md tracking-wider font-semibold"] [text "Login"]
            , button 
                    [ onClick ToggleLogin
                    , type_ "button"
                    , class "hover:text-white border-2 hover:border-indigo-300 border-white rounded-md"
                    ] [x_icon]
            ]
        , form 
            [onSubmit LoginAction, class "flex flex-col items-start space-y-3 px-3 py-3"] 
            [ div 
                [class "flex flex-col items-start justify-between space-y-1"] 
                [label [for "username"] [text "Username"]
                , input [id "username"
                        , type_ "text"
                        , placeholder "Username"
                        , value login_form.username
                        , onInput UpdateUserName
                        , class "w-full focus:border-indigo-500 focus:border-2 rounded-md text-gray-800"
                        ] []
                ]
            , div 
                [class "flex flex-col items-start justify-between space-y-1"] 
                [ label [for "password"] [text "Password"]
                , input [id "password"
                        , type_ "password"
                        , placeholder "Password"
                        , value login_form.password
                        , onInput UpdatePassword
                        , class "w-full focus:border-indigo-500 focus:border-2 rounded-md text-gray-800"
                        ] []
                ]
            
            
            , button 
                [class "focus:ring-2 inline-block ml-auto flex items-center justify-between px-3 py-2 rounded-md bg-gradient-to-r from-indigo-500 via-indigo-600 to-indigo-500 hover:from-indigo-500 hover:to-indigo-500 hover:text-white shadow-lg", type_ "submit"] 
                [ span [] [login_icon]
                , span [] [text "Login"]
                ]
            ]
        ]
        ]
        ]