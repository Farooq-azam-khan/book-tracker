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
            (model, Cmd.none) 
        UpdateUserName user_nm_inpt -> 
            let
                lgn_frm = LoginForm user_nm_inpt (model.login_form.password)
            in
                ({model | login_form = lgn_frm}, Cmd.none)
        UpdatePassword updt_pswd -> 
            let
                lgn_frm = LoginForm (model.login_form.username) updt_pswd
            in
                ({model | login_form = lgn_frm}, Cmd.none)
        LoginAction -> 
            (model, sendLoginRequest model.login_form) 
        
        ToggleLogin -> 
            ({model | show_login = not model.show_login}, Cmd.none)
        -- TODO: handle view 
        LoginSuccessful (Err _) -> 
            (model, Cmd.none)
        
        LoginSuccessful (Ok response) -> 
            let
                clear_form = LoginForm "" ""
            in
            
            ({model | token = Just (Token response), login_form = clear_form}, Cmd.none)

        -- TODO: handle view 
        BooksGetRequest (Err e) -> 
            let
                _ = Debug.log "error:" e
            in
            
            (model, Cmd.none)
        
        BooksGetRequest (Ok response) -> 
            ({model | books = Just (response)}, Cmd.none)
        


type Token = Token String 
sendLoginRequest : LoginForm -> Cmd Msg 
sendLoginRequest login_form = 
        Http.post 
            { url = "/token"
            , body = Http.multipartBody [ stringPart "username" login_form.username
                                        , stringPart "password" login_form.password
                                        ]
            , expect = Http.expectJson LoginSuccessful token_decoder
            }
getBooks : Cmd Msg 
getBooks = Http.get 
            { url = "/books"
            , expect = Http.expectJson BooksGetRequest (D.list book_decoder)
            }
token_decoder : D.Decoder String
token_decoder = D.field "access_token" D.string

book_decoder : D.Decoder Book 
book_decoder = D.map3 Book (D.field "name" D.string) (D.field "total_chapters" D.int) (D.field "author" D.int)
view : Model -> Html Msg 
view model = 
    div [] [text "hello there fastapi"]