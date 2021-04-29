module Main exposing (main)
import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main = Browser.sandbox {init = init, update = update, view=view}

type Msg = NoOp 
type alias Model = Int

init : Model 
init = 0

update : Msg -> Model -> Model 
update msg model = 
    case msg of 
        NoOp -> 
            model 

view : Model -> Html Msg 
view model = 
    div [] [text "hello there fastapi"]