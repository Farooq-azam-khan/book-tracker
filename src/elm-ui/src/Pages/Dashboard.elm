module Pages.Dashboard exposing (dashboard_view)
import Html exposing (..)

import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(type_, placeholder, for, value, id, attribute, class)

import Msg exposing (..)
import Model exposing (..)
import Components exposing (..)
import Forms exposing (create_record_form)
import Round as R
import Types exposing (..)
import Icons exposing (..)

getBookById : Int -> List Book -> Maybe Book 
getBookById id books = List.head <| List.filter (\book -> book.id == id) books 


dashboard_view : Model -> Html Msg 
dashboard_view model = 
    div [] 
        [ case model.user of 
            LoggedIn _ user -> 
                if not user.history_record_form.show_form 
                    then text ""
                    else create_record_form model.books user.history_record_form
            _ -> text "" 
        , div 
            [class "flex justify-end items-center space-x-3 mt-2 px-3"] -- md:fixed md:z-10 md:top-0 md:right-0 md:mt-2 md:mr-2"] 
            [ create_history_record_button
            , logout_button
            ]
        , case model.user of 
            LoggedIn _ user_alias -> 
                case model.books of 
                    Nothing -> text "books do not exist"
                    Just books -> display_reading_history books model.are_you_sure user_alias.reading_history
            _ -> text ""
        
        ]


display_reading_history : List Book -> Bool -> List History -> Html Msg 
display_reading_history books are_you_sure reading_history = 
    div [ class "font-serif text-gray-900 flex flex-wrap mt-4 max-w-xl md:max-w-5xl mx-auto" ]
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
                            (List.map (display_single_history  books are_you_sure) reading_history)
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
        

display_single_history :  List Book -> Bool -> History  -> Html Msg 
display_single_history books are_you_sure hist = 
    
     case getBookById hist.book books of 
        Nothing -> 
            text ("Book with id " ++ String.fromInt hist.book ++ "does not exist.")
        Just book -> 
            let
                pct = (toFloat hist.page_mark / toFloat book.total_pages)*100
                prog = if pct <= 1 then R.round 2 pct else R.round 0 pct 
            in 
            tr 
                []
                [ th [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4 text-left" ]
                    [ div 
                        [class "flex flex-col md:flex-row items-start md:items-center space-y-1 md:space-x-3"] 
                        [ div 
                            [class "flex space-x-1"] 
                            [ button 
                                [onClick AreYouSure--(DeleteRecordAction hist.id)
                                , class "font-sans px-2 py-1 text-xs font-light rounded-md bg-indigo-500 hover:bg-indigo-700 text-white"
                                ] 
                                [trash_icon "w-4 h-4"]
                            , (if are_you_sure 
                                then 
                                    are_you_sure_modal (DeleteRecordAction hist.id) (Close AreYouSure) "Delete History" "Deleting book!!!"
                                else text "")
                            , button 
                                [class "font-sans px-2 py-1 text-xs font-light rounded-md bg-indigo-500 hover:bg-indigo-700 text-white"] 
                                [pencil_icon "w-4 h-4"]
                            ]
                        , span [] [text book.name]
                        ]
                    
                    ]
                , td [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4" ]
                    [ text <| String.fromInt hist.page_mark ]
                , td [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4" ]
                    [ text <| String.fromInt hist.chapter_mark ]
                , td [ class "border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4" ]
                    [ i [ class "fas fa-arrow-down text-orange-500 mr-4" ]
                        []
                    , progres_bar "Page" pct
                    -- , text <| prog ++ "%"
                    --, " ++ (R.round 0 (100*toFloat hist.chapter_mark / toFloat book.total_chapters)) ++ "%"
                    ]
                ]