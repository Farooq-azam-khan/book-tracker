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
         | ToggleCreateRecord
         | CreateHistoryRecord

type alias LoginForm = {username: String, password: String}
type alias Book = {name : String, total_chapters : Int, author: Int}

type alias Model = 
    { login_form : LoginForm
    , show_login: Bool
    , token : Maybe Token
    , books : Maybe (List Book)
    , show_create_record_form : Bool 
    }

-- TODO: check token in localstorage with flags (if it exists then set the model token to it)
init : flags -> (Model, Cmd Msg) 
init _ =
    let
        init_model = { login_form = LoginForm "" ""
                     , show_login = False
                     , token = Nothing
                     , books = Nothing
                     , show_create_record_form = False 
                     }
    in
        (init_model, getBooks)


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
        
        CreateHistoryRecord -> 
            case model.token of 
                Just token -> 
                    (model, sendHistoryRecord token model.history_record_form)
                Nothing -> 
                    (model, Cmd.none)
        

        UpdateHistoryFormBook Nothing -> 
            let
                new_hist = History 0 (model.history_record_form.start_page) (model.history_record_form.end_page)

            in
                ({model | history_record_form = new_hist}, Cmd.none)

        UpdateHistoryFormBook (Just val) -> 
            let
                new_hist = History val (model.history_record_form.start_page) (model.history_record_form.end_page)
            in
                ({model | history_record_form = new_hist }, Cmd.none)

        UpdateHistoryStartPage Nothing -> 
            let
                new_hist = History (model.history_record_form.book) Nothing (model.history_record_form.end_page)

            in
                ({model | history_record_form = new_hist}, Cmd.none)

        UpdateHistoryStartPage (Just val) -> 
            let
                new_hist = History (model.history_record_form.book) (Just val) (model.history_record_form.end_page)
            in
                ({model | history_record_form = new_hist }, Cmd.none)

        UpdateHistoryEndPage Nothing -> 
            let
                new_hist = History (model.history_record_form.book) (model.history_record_form.start_page) 0
            in
                ({model | history_record_form = new_hist}, Cmd.none)

        UpdateHistoryEndPage (Just val) ->
            let
                new_hist = History (model.history_record_form.book) (model.history_record_form.start_page) val
            in
                ({model | history_record_form = new_hist }, Cmd.none)
        
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

login_form_view : LoginForm -> Html Msg 
login_form_view login_form = form 
                            [onSubmit LoginAction] 
                            [ label [for "username"] [text "Username"]
                            , input [id "username"
                                    , type_ "text"
                                    , placeholder "Username"
                                    , value login_form.username
                                    , onInput UpdateUserName
                                    ] []
                            , label [for "password"] [text "Password"]
                            , input [id "password"
                                    , type_ "password"
                                    , placeholder "Password"
                                    , value login_form.password
                                    , onInput UpdatePassword
                                    ] []
                            , button [type_ "button", onClick ToggleLogin] [text "x"]
                            , button [type_ "submit"] [text "Login"]
                            ]
view : Model -> Html Msg 
view model = 
    case model.token of 
        Nothing -> 
            not_loggedin_page model 
        Just _ ->
            loggedin_page model 


not_loggedin_page : Model -> Html Msg 
not_loggedin_page model = 
    div [] 
        [ (if model.show_login then login_form_view model.login_form  else div [] [button [onClick ToggleLogin] [text "login"]])
        , h1 [] [text "Books I am Reading"]
        , case model.books of 
            Nothing -> 
                text "loading"
            Just books -> 
                div [] [ol  [] (List.map view_book books)]

        ]

view_book : Book -> Html Msg 
view_book book = li [] [text book.name]
loggedin_page : Model -> Html Msg 
loggedin_page _ = 
    div [] 
        [text "Welcome"
        , button [] [text "Create Record"]
        ]