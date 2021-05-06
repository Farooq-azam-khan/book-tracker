module Components exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Round as R
import Icons exposing (..)
import Html.Events exposing (..)
import Msg exposing (Msg)
import Types exposing (Close(..))


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