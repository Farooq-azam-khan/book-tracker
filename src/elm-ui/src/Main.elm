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
         | UpdateUserName String 
         | UpdatePassword String 
         | LoginAction
         | ToggleLogin
         | LoginSuccessful (Result Http.Error String)
         | BooksGetRequest (Result Http.Error (List Book))

type alias LoginForm = {username: String, password: String}
type alias Book = {name : String, total_chapters : Int, author: Int}

type alias Model = 
    { login_form : LoginForm
    , show_login: Bool
    , token : Maybe Token
    , books : Maybe (List Book)
    }

-- TODO: check token in localstorage with flags (if it exists then set the model token to it)
init : flags -> (Model, Cmd Msg) 
init _ = ({login_form = LoginForm "" "", show_login = False, token = Nothing, books = Nothing}, getBooks)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model = 
    case msg of 
        NoOp -> 
            model 

view : Model -> Html Msg 
view model = 
    div [] [text "hello there fastapi"]