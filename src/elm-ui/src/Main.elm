module Main exposing (main)
import Browser
import Html exposing (Html, button, div, text, input, form, label, h1, ol, li)
import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(type_, placeholder, for, value, id)
import Http exposing(stringPart)
import Json.Decode as D
-- import Json.Encode as E
main: Program String Model Msg
main = Browser.element {init = init, update = update, view=view, subscriptions = subscriptions}

subscriptions : Model -> Sub Msg 
subscriptions _ = Sub.none 
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