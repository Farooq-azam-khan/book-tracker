module LoginForm exposing (..)

import Html exposing (..)
import Html.Attributes exposing (attribute, type_, value, placeholder, id, for, class, href, src)
import Html.Events exposing (onSubmit, onClick, onInput)
import Icons exposing (..)
import Msg exposing (..)
import Types exposing (..)
import Svg exposing (svg, path)
import Svg.Attributes as SA exposing (d, fill, viewBox)


login_form_view : LoginForm -> Html Msg 
login_form_view login_form = 
    div [ class ""]
    [ div [class "fixed z-10 inset-0 bg-black opacity-50"] []
    , div [ class "flex items-center justify-center fixed inset-0 z-30 mx-auto width-full sm:max-w-md bg-white rounded-xl" ]
        [ div [class ""] 
            [  div 
                [class "flex items-center justify-between"] 
                [ form_header
                , close_form_btn
                ]
            , form [ class "mt-8 space-y-6", onSubmit LoginAction ]
                [  div [ class "relative" ]
                    [ label [ class "text-sm font-bold text-gray-700 tracking-wide" ]
                        [ text "Username" ]
                    , input 
                        [ class "w-full text-base py-2 border-b border-gray-300 focus:outline-none focus:border-indigo-500"
                        , placeholder "username"
                        , type_ "text"
                        , value login_form.username 
                        , onInput UpdateUserName
                        ]
                        []
                    ]
                , div [ class "mt-8 content-center" ]
                    [ label [ class "text-sm font-bold text-gray-700 tracking-wide" ]
                        [ text "Password" ]
                    , input 
                        [ class "w-full content-center text-base py-2 border-b border-gray-300 focus:outline-none focus:border-indigo-500"
                        , placeholder "Enter your password"
                        , type_ "password"
                        , value login_form.password
                        , onInput UpdatePassword 
                        ]
                        []
                    ]
                , div []
                    [ button [ class "w-full flex justify-center bg-indigo-500 text-gray-100 p-4  rounded-full tracking-wide font-semibold  focus:outline-none focus:shadow-outline hover:bg-indigo-600 shadow-lg cursor-pointer transition ease-in duration-300", type_ "submit" ]
                        [ text "Sign in" ]
                    ]
                
                ]
            ]
        ]
    ]



form_header : Html Msg 
form_header = 
    div [ class "text-center" ]
        [ h2 [ class "mt-6 text-3xl font-bold text-gray-900" ]
            [ text "Welcom Back!			" ]
        , p [ class "mt-2 text-sm text-gray-600" ]
            [ text "Please sign in to your account" ]
        ]

close_form_btn :  Html Msg 
close_form_btn = 
    button 
        [ onClick ToggleLogin
        , type_ "button"
        , class "border-2 hover:border-indigo-300 border-white rounded-md"
        ] [x_icon] 
