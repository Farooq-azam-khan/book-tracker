module Pages.Home exposing (loggedin_page, not_loggedin_page)
import Model exposing (..)
import Msg exposing (..)
import Types exposing (..)
import Html exposing (Html, button, div, text, input, form, 
                    label, h1, ol, li, select, option, strong, span, h2, h3, p,
                    table, i, tbody, thead, td, th, tr)
import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(type_, placeholder, for, value, id, attribute, class)
import Round as R
import Svg exposing (svg, path)
import Svg.Attributes as SA exposing (d, fill, viewBox)

import Forms exposing (login_form_view, create_record_form)

loggedin_page : Model -> Html Msg 
loggedin_page model = 
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

minus_icon = 
    svg [ SA.class "w-6 h-6", fill "none", attribute "stroke" "currentColor", viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
        [ path [ d "M20 12H4", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
            []
        ]

plus_icon = 
    svg 
        [ SA.class "w-6 h-6", fill "none", attribute "stroke" "currentColor", viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
        [ path 
            [ d "M12 6v6m0 0v6m0-6h6m-6 0H6", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
            []
        ]
create_history_record_button : Html Msg 
create_history_record_button = 
    button 
        [onClick ToggleCreateRecord, class "flex items-center justify-between space-x-1 bg-white text-gray-900 px-3 py-2 text-sm rounded-lg hover:bg-red-700 hover:text-red-100"] 
        [span [] [plus_icon]
        , span [class "sm:block hidden"] [text "Create History Record"]
        , span [class "block sm:hidden"] [text "Create Record"]
        ]
        

logout_icon = 
    svg 
        [ SA.class "w-6 h-6", fill "none", attribute "stroke" "currentColor", viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
        [ path 
            [ d "M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
            []
        ]
logout_button : Html Msg 
logout_button = 
    button 
        [onClick LogoutAction, class "flex items-center justify-between space-x-1 bg-white text-gray-900 px-3 py-2 text-sm rounded-lg hover:bg-indigo-700 hover:text-indigo-100"] 
        [ span [] [logout_icon]
        , span [] [text "logout"]
        ]

display_reading_history : List Book -> List History -> Html Msg 
display_reading_history books reading_history = 
    div [ class "text-gray-900 flex flex-wrap mt-4 max-w-xl mx-auto" ]
        [ div [ class "w-full xl:w-8/12 mb-12 xl:mb-0 px-4" ]
            [ div [ class "relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-lg rounded" ]
                [ div [ class "rounded-t mb-0 px-4 py-3 border-0" ]
                    [ div [ class "flex flex-wrap items-center" ]
                        [ div [ class "relative w-full px-4 max-w-full flex-grow flex-1" ]
                            [ h3 [ class "font-semibold text-base text-blueGray-700" ]
                                [ text "History" ]
                            ]
                        , div [ class "relative w-full px-4 max-w-full flex-grow flex-1 text-right" ]
                            [ button [ class "cursor-not-allowed bg-indigo-500 text-white active:bg-indigo-600 text-xs font-bold uppercase px-3 py-1 rounded outline-none focus:outline-none mr-1 mb-1", attribute "style" "transition:all .15s ease", type_ "button", attribute "diabled" "disabled" ]
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

display_single_history :  List Book -> History  -> Html Msg 
display_single_history books hist = 
     case getBookById hist.book books of 
        Nothing -> 
            text ("Book with id " ++ String.fromInt hist.book ++ "does not exist.")
        Just book -> 
            -- div [] 
            --     [strong [] [text book.name]
            --     , text (" at page:" ++ String.fromInt hist.page_mark ++" (")
            --     , text ((R.round 2 (100*(toFloat hist.page_mark / toFloat book.total_pages))) ++ "%)")
            --     , text (" Chapter: " ++ String.fromInt hist.chapter_mark ++ " (")
            --     , text ((R.round 2 (100*(toFloat hist.chapter_mark / toFloat book.total_chapters))) ++ "%)")
            --     ]

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



