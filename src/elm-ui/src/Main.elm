module Main exposing (main)
import Browser
import Html exposing (Html, button, div, text, input, form, label, h1, ol, li)
import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(type_, placeholder, for, value, id)
import Http exposing(stringPart)
import Json.Decode as D
import Json.Encode as E

import Model exposing (..)
import Msg exposing (..)
import Types exposing (..)

import Ports exposing (storeToken, deleteToken)

import Pages exposing (loggedin_page)




type alias Flags = { storedToken : Maybe String }


main: Program Flags Model Msg
main = Browser.element {init = init, update = update, view=view, subscriptions = subscriptions}


subscriptions : Model -> Sub Msg 
subscriptions _ = Sub.none 

-- TODO: check token in localstorage with flags (if it exists then set the model token to it)
init : Flags -> (Model, Cmd Msg) 
init flags =
    let
        maybeToken = Maybe.map Token flags.storedToken
        -- _ = Debug.log "Flags" maybeToken
        init_model = { login_form = LoginForm "" ""
                     , show_login = False
                     , token = maybeToken
                     , books = Nothing
                     , reading_history = Nothing 
                     , show_create_record_form = False 
                     , history_record_form = History 0 Nothing 0
                     }
        commands = Cmd.batch [getReadingHistory maybeToken, getBooks]

    in
        (init_model, commands)


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
        LoginSuccessful (Err (Http.BadStatus 401)) -> 
            -- delete token from local storage if an error occurs
            log_user_out model 
        
        LoginSuccessful (Err _) -> 
            -- delete token from local storage if an error occurs
            (model, Cmd.none)
        
        LoginSuccessful (Ok response) -> 
            let
                clear_form = LoginForm "" ""
                new_model = {model | token = Just (Token response), login_form = clear_form}
                commands = Cmd.batch [getReadingHistory new_model.token, storeToken response]
            in
            
            (new_model, commands)

        BooksGetRequest (Err (Http.BadStatus 401)) ->             
            log_user_out model 

        -- TODO: handle view 
        BooksGetRequest (Err _) ->             
            (model, Cmd.none) 
        
        
        
        BooksGetRequest (Ok response) -> 
            ({model | books = Just (response)}, Cmd.none)

         
            

        HistoryGetRequest (Err (Http.BadStatus 401)) -> 
                log_user_out model 
        
        HistoryGetRequest (Err _) -> 
                (model, Cmd.none)

        HistoryGetRequest (Ok response) ->
                ({model | reading_history = Just response}, Cmd.none)
        
        ToggleCreateRecord -> 
            ({model | show_create_record_form = not model.show_create_record_form}, Cmd.none)
        
        WasHistoryRecodedSuccessful (Err (Http.BadStatus 401)) -> 
                log_user_out model

        WasHistoryRecodedSuccessful (Err _) -> 
                (model, Cmd.none) 

        WasHistoryRecodedSuccessful (Ok response) -> 
            let
                -- _ = Debug.log "response after adding history" response 
                new_model = {model | history_record_form = History 0 Nothing 0}
                new_reading_list = case model.reading_history of 
                    Nothing -> 
                       Just response 
                    Just old_reading_history -> 
                        Just (List.append response old_reading_history)

            in
                ({new_model|reading_history=new_reading_list}, Cmd.none)
        
        StoreTokenAction -> 
            case model.token of 
                Nothing -> 
                    (model, Cmd.none)
                Just (Token tkn_str) -> 
                    (model, storeToken tkn_str)
        

getReadingHistory : Maybe Token -> Cmd Msg 
getReadingHistory maybe_tkn = 
        case maybe_tkn of 
            Nothing -> 
                Cmd.none 
            Just (Token tkn) -> 
                let
                    auth_header = Http.header "Authorization" ("Bearer " ++ tkn)
                in
                    Http.request 
                        { url = "/history"
                        , method = "get"
                        , headers = [auth_header]
                        , body = Http.emptyBody
                        , timeout = Nothing 
                        , tracker = Nothing 
                        , expect = Http.expectJson HistoryGetRequest (D.list history_decoder)
                        }

log_user_out : Model -> (Model, Cmd msg)
log_user_out model = ({model | token = Nothing}, deleteToken "")

history_decoder : D.Decoder History 
history_decoder = 
    D.map3 History 
        (D.field "book" D.int)
        (D.maybe  (D.field "start_page" D.int))
        (D.field "end_page" D.int)

-- type Token = Token String 

sendHistoryRecord : Token -> History -> Cmd Msg 
sendHistoryRecord (Token tkn) history_record_form = 
    let
        auth_header = Http.header "Authorization" ("Bearer " ++ tkn)
    in
        Http.request 
            { url = "/history"
            , method = "post"
            , headers = [auth_header]
            , body = Http.jsonBody (encodeHistory history_record_form)
            , timeout = Nothing 
            , tracker = Nothing 
            , expect = Http.expectJson WasHistoryRecodedSuccessful (D.list history_decoder)
            }

encodeHistory : History -> E.Value 
encodeHistory history_record_form =
    let
        bk_val = ("book", E.int history_record_form.book)
        end_page_val = ("end_page", E.int history_record_form.end_page)
    in
    
    case history_record_form.start_page of
        Nothing ->
            E.object 
                [ end_page_val
                , bk_val
                ]
        Just st_pg ->
            E.object 
                [ end_page_val
                , bk_val
                , ("start_page", E.int st_pg)
                ]


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