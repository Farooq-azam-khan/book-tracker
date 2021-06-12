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


progress_bar : String -> Float -> Html Msg 
progress_bar prog_type percentage = 
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


navbar : Html Msg 
navbar = 
 nav [ class "md:left-0 md:block md:fixed md:top-0 md:bottom-0 md:overflow-y-auto md:flex-row md:flex-nowrap md:overflow-hidden shadow-xl bg-white flex flex-wrap items-center justify-between relative md:w-64 z-10 py-4 px-6" ]
    [ div [ class "md:flex-col md:items-stretch md:min-h-full md:flex-nowrap px-0 flex flex-wrap items-center justify-between w-full mx-auto" ]
        [ button [ class "cursor-pointer text-black opacity-50 md:hidden px-3 py-1 text-xl leading-none bg-transparent rounded border border-solid border-transparent", attribute "onclick" "toggleNavbar('example-collapse-sidebar')", type_ "button" ]
            [ i [ class "fas fa-bars" ]
                []
            ]
        , a [ class "md:block text-left md:pb-2 text-blueGray-600 mr-0 inline-block whitespace-nowrap text-sm uppercase font-bold p-4 px-0", href "javascript:void(0)" ]
            [ text "Tailwind Starter Kit    " ]
        , ul [ class "md:hidden items-center flex flex-wrap list-none" ]
            [ li [ class "inline-block relative" ]
                [ a [ class "text-blueGray-500 block py-1 px-3", href "#pablo", attribute "onclick" "openDropdown(event,'notification-dropdown')" ]
                    [ i [ class "fas fa-bell" ]
                        []
                    ]
                , div [ class "hidden bg-white text-base z-50 float-left py-2 list-none text-left rounded shadow-lg mt-1", id "notification-dropdown", attribute "style" "min-width: 12rem;" ]
                    [ a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Action" ]
                    , a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Another            action" ]
                    , a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Something            else here" ]
                    , div [ class "h-0 my-2 border border-solid border-blueGray-100" ]
                        []
                    , a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Seprated            link" ]
                    ]
                ]
            , li [ class "inline-block relative" ]
                [ a [ class "text-blueGray-500 block", href "#pablo", attribute "onclick" "openDropdown(event,'user-responsive-dropdown')" ]
                    [ div [ class "items-center flex" ]
                        [ span [ class "w-12 h-12 text-sm text-white bg-blueGray-200 inline-flex items-center justify-center rounded-full" ]
                            [ img [ alt "...", class "w-full rounded-full align-middle border-none shadow-lg", src "./assets/img/team-1-800x800.jpg" ]
                                []
                            ]
                        ]
                    ]
                , div [ class "hidden bg-white text-base z-50 float-left py-2 list-none text-left rounded shadow-lg mt-1", id "user-responsive-dropdown", attribute "style" "min-width: 12rem;" ]
                    [ a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Action" ]
                    , a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Another            action" ]
                    , a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Something            else here" ]
                    , div [ class "h-0 my-2 border border-solid border-blueGray-100" ]
                        []
                    , a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Seprated            link" ]
                    ]
                ]
            ]
        , div [ class "md:flex md:flex-col md:items-stretch md:opacity-100 md:relative md:mt-4 md:shadow-none shadow absolute top-0 left-0 right-0 z-40 overflow-y-auto overflow-x-hidden h-auto items-center flex-1 rounded hidden", id "example-collapse-sidebar" ]
            [ div [ class "md:min-w-full md:hidden block pb-4 mb-4 border-b border-solid border-blueGray-200" ]
                [ div [ class "flex flex-wrap" ]
                    [ div [ class "w-6/12" ]
                        [ a [ class "md:block text-left md:pb-2 text-blueGray-600 mr-0 inline-block whitespace-nowrap text-sm uppercase font-bold p-4 px-0", href "javascript:void(0)" ]
                            [ text "Tailwind Starter Kit            " ]
                        ]
                    , div [ class "w-6/12 flex justify-end" ]
                        [ button [ class "cursor-pointer text-black opacity-50 md:hidden px-3 py-1 text-xl leading-none bg-transparent rounded border border-solid border-transparent", attribute "onclick" "toggleNavbar('example-collapse-sidebar')", type_ "button" ]
                            [ i [ class "fas fa-times" ]
                                []
                            ]
                        ]
                    ]
                ]
            , Html.form [ class "mt-6 mb-4 md:hidden" ]
                [ div [ class "mb-3 pt-0" ]
                    [ input [ class "border-0 px-3 py-2 h-12 border border-solid  border-blueGray-500 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-base leading-snug shadow-none outline-none focus:outline-none w-full font-normal", placeholder "Search", type_ "text" ]
                        []
                    , text "        "
                    ]
                ]
            , ul [ class "md:flex-col md:min-w-full flex flex-col list-none" ]
                [ li [ class "items-center" ]
                    [ a [ class "text-indigo-500 hover:text-indigo-600 text-xs uppercase py-3 font-bold block", href "#/dashboard" ]
                        [ i [ class "fas fa-tv opacity-75 mr-2 text-sm" ]
                            []
                        , text "Dashboard"
                        ]
                    ]
                , li [ class "items-center" ]
                    [ a [ class "text-blueGray-700 hover:text-blueGray-500 text-xs uppercase py-3 font-bold block", href "#/landing" ]
                        [ i [ class "fas fa-newspaper text-blueGray-400 mr-2 text-sm" ]
                            []
                        , text "Landing Page"
                        ]
                    ]
                , li [ class "items-center" ]
                    [ a [ class "text-blueGray-700 hover:text-blueGray-500 text-xs uppercase py-3 font-bold block", href "#/profile" ]
                        [ i [ class "fas fa-user-circle text-blueGray-400 mr-2 text-sm" ]
                            []
                        , text "Profile Page"
                        ]
                    ]
                , li [ class "items-center" ]
                    [ a [ class "text-blueGray-700 hover:text-blueGray-500 text-xs uppercase py-3 font-bold block", href "#/login" ]
                        [ i [ class "fas fa-fingerprint text-blueGray-400 mr-2 text-sm" ]
                            []
                        , text "Login"
                        ]
                    ]
                , li [ class "items-center" ]
                    [ a [ class "text-blueGray-300 text-xs uppercase py-3 font-bold block", href "#pablo" ]
                        [ i [ class "fas fa-clipboard-list text-blueGray-300 mr-2 text-sm" ]
                            []
                        , text "Register (soon)"
                        ]
                    ]
                , li [ class "items-center" ]
                    [ a [ class "text-blueGray-300 text-xs uppercase py-3 font-bold block", href "#pablo" ]
                        [ i [ class "fas fa-tools text-blueGray-300 mr-2 text-sm" ]
                            []
                        , text "Settings (soon)"
                        ]
                    ]
                ]
            , hr [ class "my-4 md:min-w-full" ]
                []
            , h6 [ class "md:min-w-full text-blueGray-500 text-xs uppercase font-bold block pt-1 pb-4 no-underline" ]
                [ text "Documentation      " ]
            , ul [ class "md:flex-col md:min-w-full flex flex-col list-none md:mb-4" ]
                [ li [ class "inline-flex" ]
                    [ a [ class "text-blueGray-700 hover:text-blueGray-500 text-sm block mb-4 no-underline font-semibold", href "#/documentation/styles" ]
                        [ i [ class "fas fa-paint-brush mr-2 text-blueGray-400 text-base" ]
                            []
                        , text "Styles"
                        ]
                    ]
                , li [ class "inline-flex" ]
                    [ a [ class "text-blueGray-700 hover:text-blueGray-500 text-sm block mb-4 no-underline font-semibold", href "#/documentation/alerts" ]
                        [ i [ class "fab fa-css3-alt mr-2 text-blueGray-400 text-base" ]
                            []
                        , text "CSS Components"
                        ]
                    ]
                , li [ class "inline-flex" ]
                    [ a [ class "text-blueGray-700 hover:text-blueGray-500 text-sm block mb-4 no-underline font-semibold", href "#/documentation/vue/alerts" ]
                        [ i [ class "fab fa-vuejs mr-2 text-blueGray-400 text-base" ]
                            []
                        , text "VueJS"
                        ]
                    ]
                , li [ class "inline-flex" ]
                    [ a [ class "text-blueGray-700 hover:text-blueGray-500  text-sm block mb-4 no-underline font-semibold", href "#/documentation/react/alerts" ]
                        [ i [ class "fab fa-react mr-2 text-blueGray-400 text-base" ]
                            []
                        , text "React"
                        ]
                    ]
                , li [ class "inline-flex" ]
                    [ a [ class "text-blueGray-700 hover:text-blueGray-500  text-sm block mb-4 no-underline font-semibold", href "#/documentation/angular/alerts" ]
                        [ i [ class "fab fa-angular mr-2 text-blueGray-400 text-base" ]
                            []
                        , text "Angular"
                        ]
                    ]
                , li [ class "inline-flex" ]
                    [ a [ class "text-blueGray-700 hover:text-blueGray-500  text-sm block mb-4 no-underline font-semibold", href "#/documentation/javascript/alerts" ]
                        [ i [ class "fab fa-js-square mr-2 text-blueGray-400 text-base" ]
                            []
                        , text "Javascript"
                        ]
                    ]
                ]
            ]
        ]
    ]

navbar_2 : Html msg 
navbar_2 = 
    nav [ class "absolute top-0 left-0 w-full z-10 bg-transparent md:flex-row md:flex-nowrap md:justify-start flex items-center p-4" ]
        [ div [ class "w-full mx-autp items-center flex justify-between md:flex-nowrap flex-wrap md:px-10 px-4" ]
            [ a [ class "text-white text-sm uppercase hidden lg:inline-block font-semibold", href "./index.html" ]
                [ text "Dashboard" ]
            , Html.form [ class "md:flex hidden flex-row flex-wrap items-center lg:ml-auto mr-3" ]
                [ div [ class "relative flex w-full flex-wrap items-stretch" ]
                    [ span [ class "z-10 h-full leading-snug font-normal absolute text-center text-blueGray-300 absolute bg-transparent rounded text-base items-center justify-center w-8 pl-3 py-3" ]
                        [ i [ class "fas fa-search" ]
                            []
                        ]
                    , input [ class "border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 relative bg-white bg-white rounded text-sm shadow outline-none focus:outline-none focus:ring w-full pl-10", placeholder "Search here...", type_ "text" ]
                        []
                    , text "      "
                    ]
                ]
            , ul [ class "flex-col md:flex-row list-none items-center hidden md:flex" ]
                [ a [ class "text-blueGray-500 block", href "#pablo", attribute "onclick" "openDropdown(event,'user-dropdown')" ]
                    [ div [ class "items-center flex" ]
                        [ span [ class "w-12 h-12 text-sm text-white bg-blueGray-200 inline-flex items-center justify-center rounded-full" ]
                            [ img [ alt "...", class "w-full rounded-full align-middle border-none shadow-lg", src "./assets/img/team-1-800x800.jpg" ]
                                []
                            ]
                        ]
                    ]
                , div [ class "hidden bg-white text-base z-50 float-left py-2 list-none text-left rounded shadow-lg mt-1", id "user-dropdown", attribute "style" "min-width: 12rem;" ]
                    [ a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Action" ]
                    , a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Another          action" ]
                    , a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Something          else here" ]
                    , div [ class "h-0 my-2 border border-solid border-blueGray-100" ]
                        []
                    , a [ class "text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700", href "#pablo" ]
                        [ text "Seprated          link" ]
                    ]
                ]
            ]
        ]

dashboard_header : Html Msg 
dashboard_header = div [] []