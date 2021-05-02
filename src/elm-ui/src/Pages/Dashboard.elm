module Pages.Dashboard exposing (dashboard_view)
import Html exposing (..)

import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(type_, placeholder, for, value, id, attribute, class)

import Msg exposing (..)
import Model exposing (..)

import Forms exposing (create_record_form)
import Round as R
import Types exposing (..)
import Icons exposing (..)

getBookById : Int -> List Book -> Maybe Book 
getBookById id books = List.head <| List.filter (\book -> book.id == id) books 


dashboard_view : Model -> Html Msg 
dashboard_view model = 
    div [] 
        [ if not model.show_create_record_form 
            then text ""
            else create_record_form model.books model.history_record_form 
        , div 
            [class "flex justify-end items-center space-x-3 mt-2 px-3"] -- md:fixed md:z-10 md:top-0 md:right-0 md:mt-2 md:mr-2"] 
            [ create_history_record_button
            , logout_button
            ]
        ,  case model.reading_history of 
            Nothing -> 
                -- TODO: loading icon
                -- div [class "fixed inset-0"] [div [class "bg-black opacity-50"] [], div [class "animate-spin"] [minus_icon]]
                text "loading.."
            Just read_hist -> 
                case model.books of 
                    Nothing -> 
                        text "Books do not exist"
                    Just books -> 
                        display_reading_history books read_hist
        
        ]


display_reading_history : List Book -> List History -> Html Msg 
display_reading_history books reading_history = 
    div [ class "font-serif text-gray-900 flex flex-wrap mt-4 max-w-xl mx-auto" ]
        [ div [ class "w-full xl:w-8/12 mb-12 xl:mb-0 px-4" ]
            [ div [ class "relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-lg rounded" ]
                [ div [ class "rounded-t mb-0 px-4 py-3 border-0" ]
                    [ div [ class "flex flex-wrap items-center" ]
                        [ div [ class "relative w-full px-4 max-w-full flex-grow flex-1" ]
                            [ h3 [ class "font-semibold text-base text-blueGray-700" ]
                                [ text "History" ]
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
                                [ th [ class "px-6 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left" ]
                                    [ text "Book" ]
                                , th [ class "px-6 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left" ]
                                    [ text "Page" ]
                                , th [ class "px-6 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left" ]
                                    [ text "Chapter" ]
                                , th [ class "px-6 bg-blueGray-50 text-blueGray-500 align-middle border border-solid border-blueGray-100 py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left" ]
                                    [ text "Progress" ]
                                ]
                            ]
                        , tbody []
                            (List.map (display_single_history books) reading_history)
                        ]
                    ]
                ]
            ]
    ]

logout_button : Html Msg 
logout_button = 
    button 
        [onClick LogoutAction, class "flex items-center justify-between space-x-1 bg-white text-gray-900 px-3 py-2 text-sm rounded-lg hover:bg-indigo-700 hover:text-indigo-100"] 
        [ span [] [logout_icon]
        , span [] [text "logout"]
        ]


create_history_record_button : Html Msg 
create_history_record_button = 
    button 
        [onClick ToggleCreateRecord, class "flex items-center justify-between space-x-1 bg-white text-gray-900 px-3 py-2 text-sm rounded-lg hover:bg-red-700 hover:text-red-100"] 
        [span [] [plus_icon]
        , span [class "sm:block hidden"] [text "Create History Record"]
        , span [class "block sm:hidden"] [text "Create Record"]
        ]
        

display_single_history :  List Book -> History  -> Html Msg 
display_single_history books hist = 
     case getBookById hist.book books of 
        Nothing -> 
            text ("Book with id " ++ String.fromInt hist.book ++ "does not exist.")
        Just book -> 
            tr 
                []
                [ th [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4 text-left" ]
                    [ text book.name ]
                , td [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4" ]
                    [ text <| String.fromInt hist.page_mark ]
                , td [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4" ]
                    [ text <| String.fromInt hist.chapter_mark ]
                , td [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4" ]
                    [ i [ class "fas fa-arrow-down text-orange-500 mr-4" ]
                        []
                    , text <| (R.round 0 (100*toFloat hist.page_mark / toFloat book.total_pages)) ++ "%"
                    --, " ++ (R.round 0 (100*toFloat hist.chapter_mark / toFloat book.total_chapters)) ++ "%"
                    ]
                ]