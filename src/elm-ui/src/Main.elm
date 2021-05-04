module Main exposing (main)
import Browser
import Html exposing (Html, button, div, text, input, form, label, h1, ol, li)
import Html.Events exposing (onInput, onSubmit, onClick)
import Html.Attributes exposing(type_, placeholder, for, value, id)
import Http
import Json.Decode as D
import Json.Encode as E

import Model exposing (..)
import Msg exposing (..)
import Types exposing (..)
import Api exposing (getReadingHistory, sendHistoryRecord, sendLoginRequest)
import Ports exposing (storeToken, deleteToken)
import Html.Attributes exposing (class)
import Pages.Home exposing (home_view)
import Pages.Dashboard exposing (dashboard_view)


main: Program Flags Model Msg
main = Browser.element {init = init, update = update, view=view, subscriptions = subscriptions}


subscriptions : Model -> Sub Msg 
subscriptions _ = Sub.none 



update : Msg -> Model -> (Model, Cmd Msg)
update msg model = 
    case msg of 
        NoOp -> 
            (model, Cmd.none) 
        UpdateUserName user_nm_inpt -> 
            case model.user of 
                LoggedOut login_form -> 
                    let 
                        new_user = LoggedOut ({login_form | username = user_nm_inpt})
                    in 
                        ({model | user = new_user}, Cmd.none)
                _ -> (model, Cmd.none)
        UpdatePassword updt_pswd -> 
            case model.user of 
                LoggedOut login_form -> 
                        let 
                            new_user = LoggedOut ({login_form | password = updt_pswd})
                        in 
                            ({model | user = new_user}, Cmd.none)
                _ -> (model, Cmd.none)
            -- (model, Cmd.none)
            -- let
            --     lgn_frm = LoginForm (model.login_form.username) updt_pswd
            -- in
            --     ({model | login_form = lgn_frm}, Cmd.none)
        LoginAction -> 
            case model.user of 
                LoggedOut login_form -> 
                    (model, sendLoginRequest login_form) 
                _ -> 
                    (model, Cmd.none)
        
        CreateHistoryRecord -> 
            -- case model.token of 
            --     Just token -> 
            --         (model, sendHistoryRecord token model.history_record_form)
            --     Nothing -> 
                    (model, Cmd.none)
        

        UpdateHistoryFormBook Nothing -> 
            (model, Cmd.none)
            -- let
            --     new_hist = CreateHistory 1 (model.history_record_form.page_mark) (model.history_record_form.chapter_mark)

            -- in
            --     ({model | history_record_form = new_hist}, Cmd.none)

        UpdateHistoryFormBook (Just val) -> 
            (model, Cmd.none)
            -- let
            --     new_hist = CreateHistory val (model.history_record_form.page_mark) (model.history_record_form.chapter_mark)
            -- in
            --     ({model | history_record_form = new_hist }, Cmd.none)

        UpdateHistoryPageMark Nothing -> 
            (model, Cmd.none)
            -- let
            --     new_hist = CreateHistory (model.history_record_form.book) 0 (model.history_record_form.chapter_mark)

            -- in
            --     ({model | history_record_form = new_hist}, Cmd.none)

        UpdateHistoryPageMark (Just val) -> 
            (model, Cmd.none)
            -- let
            --     new_hist = CreateHistory (model.history_record_form.book) val (model.history_record_form.chapter_mark)
            -- in
            --     ({model | history_record_form = new_hist }, Cmd.none)

        UpdateHistoryChapterMark Nothing -> 
            (model, Cmd.none)
            -- let
            --     new_hist = CreateHistory (model.history_record_form.book) (model.history_record_form.page_mark) 0
            -- in
            --     ({model | history_record_form = new_hist}, Cmd.none)

        UpdateHistoryChapterMark (Just val) ->
            (model, Cmd.none)
            -- let
            --     new_hist = CreateHistory (model.history_record_form.book) (model.history_record_form.page_mark) val
            -- in
            --     ({model | history_record_form = new_hist }, Cmd.none)
        
        ToggleLogin ->
            let 
                new_user = case model.user of 
                                LoggedOut login_form -> 
                                    let 
                                        new_login_form = {login_form | show_form = not login_form.show_form}
                                    in 
                                        LoggedOut new_login_form
                                _ -> model.user 
            in 
                ({model | user = new_user }, Cmd.none)

        -- TODO: handle view 
        LoginSuccessful (Err (Http.BadStatus 401)) -> 
            -- delete token from local storage if an error occurs
            log_user_out model 
        
        LoginSuccessful (Err _) -> 
            -- delete token from local storage if an error occurs
            (model, Cmd.none)
        
        LoginSuccessful (Ok response) -> 
            let
                user_alias = { history_record_form = CreateHistory 0 0 0, reading_history = Nothing }
                new_user = LoggedIn (Token response) user_alias 
                commands = Cmd.batch [storeToken response, getReadingHistory (Token response)]
            in
                ({model | user = new_user}, commands)
    

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
            let 
                new_user = case model.user of 
                            LoggedIn token user_alias -> 
                                LoggedIn token ({user_alias | reading_history = Just response})
                            _ -> model.user
            in 
            -- (model, Cmd.none)
                ({model | user = new_user }, Cmd.none)
        
        ToggleCreateRecord -> 
            ({model | show_create_record_form = not model.show_create_record_form}, Cmd.none)
        
        -- WasHistoryRecodedSuccessful (Err (Http.BadStatus 401)) -> 
        --         log_user_out model

        WasHistoryRecodedSuccessful (Err _) -> 
                (model, Cmd.none) 

        WasHistoryRecodedSuccessful (Ok response) -> 
            (model, Cmd.none)
            -- let
            --     -- _ = Debug.log "response after adding history" response 
            --     new_model = {model | history_record_form = CreateHistory 0 0 0, show_create_record_form = False}
            --     new_reading_list = case model.reading_history of 
            --         Nothing -> 
            --            Just response 
            --         Just old_reading_history -> 
            --             Just (List.append response old_reading_history)

            -- in
            --     ({new_model|reading_history=new_reading_list}, Cmd.none)
        LogoutAction ->
            log_user_out model 

        StoreTokenAction -> 
            (model, Cmd.none)
            -- case model.token of 
            --     Nothing -> 
            --         (model, Cmd.none)
            --     Just (Token tkn_str) -> 
            --         (model, storeToken tkn_str)
        
        -- GetActiveReadingList (Err (Http.BadStatus 401)) -> 
        --     log_user_out model
        
        GetActiveReadingList (Err e) -> 
            (model, Cmd.none)
        
        GetActiveReadingList (Ok response) -> 
            ({model | reading_list = response}, Cmd.none)

        



log_user_out : Model -> (Model, Cmd msg)
-- log_user_out model = ({model | token = Nothing, reading_history = Nothing}, deleteToken "")
log_user_out model = 
    let 
        new_user = LoggedOut (LoginForm "" "" False)
    in 
    ({model | user = new_user} , deleteToken "")

view : Model -> Html Msg 
view model = 
    div 
        [class "px-2 font-sans"] 
        [ case model.user of 
            LoggedIn _ _ -> 
                dashboard_view model 
            Unknown -> 
                text "loading..."
            LoggedOut _ -> 
                home_view model 
        ]
