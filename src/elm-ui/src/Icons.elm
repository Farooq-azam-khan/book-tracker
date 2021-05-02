module Icons exposing (..)
import Svg exposing (svg, path)
import Svg.Attributes as SA exposing (d, fill, viewBox)
import Html exposing (Html, button, div, text, input, form, 
                    label, h1, ol, li, select, option, strong, span, h2, h3, p,
                    table, i, tbody, thead, td, th, tr)
import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(type_, placeholder, for, value, id, attribute, class)

login_icon : String -> Html msg 
login_icon cls = 
    svg [ SA.class cls, fill "none", attribute "stroke" "currentColor", viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
    [ path [ d "M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
        []
    ]

plus_icon = 
    svg 
        [ SA.class "w-6 h-6", fill "none", attribute "stroke" "currentColor", viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
        [ path 
            [ d "M12 6v6m0 0v6m0-6h6m-6 0H6", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
            []
        ]

logout_icon = 
    svg 
        [ SA.class "w-6 h-6", fill "none", attribute "stroke" "currentColor", viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
        [ path 
            [ d "M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
            []
        ]
minus_icon = 
    svg [ SA.class "w-6 h-6", fill "none", attribute "stroke" "currentColor", viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
        [ path [ d "M20 12H4", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
            []
        ]
