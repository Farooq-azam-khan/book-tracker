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
                new_hist = CreateHistory 1 (model.history_record_form.page_mark) (model.history_record_form.chapter_mark)

            in
                ({model | history_record_form = new_hist}, Cmd.none)

        UpdateHistoryFormBook (Just val) -> 
            let
                new_hist = CreateHistory val (model.history_record_form.page_mark) (model.history_record_form.chapter_mark)
            in
                ({model | history_record_form = new_hist }, Cmd.none)

        UpdateHistoryPageMark Nothing -> 
            let
                new_hist = CreateHistory (model.history_record_form.book) 0 (model.history_record_form.chapter_mark)

            in
                ({model | history_record_form = new_hist}, Cmd.none)

        UpdateHistoryPageMark (Just val) -> 
            let
                new_hist = CreateHistory (model.history_record_form.book) val (model.history_record_form.chapter_mark)
            in
                ({model | history_record_form = new_hist }, Cmd.none)

        UpdateHistoryChapterMark Nothing -> 
            let
                new_hist = CreateHistory (model.history_record_form.book) (model.history_record_form.page_mark) 0
            in
                ({model | history_record_form = new_hist}, Cmd.none)

        UpdateHistoryChapterMark (Just val) ->
            let
                new_hist = CreateHistory (model.history_record_form.book) (model.history_record_form.page_mark) val
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
                -- _ = Debug.log "Login in successful, storing token and getting history for uesr"
                new_model = {model | token = Just (Token response), login_form = clear_form, show_login = False}
                commands = Cmd.batch [storeToken response, getReadingHistory (Token response)]
            in
            
            (new_model, commands)

        -- BooksGetRequest (Err (Http.BadStatus 401)) ->             
        --     log_user_out model 

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
        
        -- WasHistoryRecodedSuccessful (Err (Http.BadStatus 401)) -> 
        --         log_user_out model

        WasHistoryRecodedSuccessful (Err _) -> 
                (model, Cmd.none) 

        WasHistoryRecodedSuccessful (Ok response) -> 
            let
                -- _ = Debug.log "response after adding history" response 
                new_model = {model | history_record_form = CreateHistory 0 0 0, show_create_record_form = False}
                new_reading_list = case model.reading_history of 
                    Nothing -> 
                       Just response 
                    Just old_reading_history -> 
                        Just (List.append response old_reading_history)

            in
                ({new_model|reading_history=new_reading_list}, Cmd.none)
        LogoutAction ->
            log_user_out model 

        StoreTokenAction -> 
            case model.token of 
                Nothing -> 
                    (model, Cmd.none)
                Just (Token tkn_str) -> 
                    (model, storeToken tkn_str)
        
        -- GetActiveReadingList (Err (Http.BadStatus 401)) -> 
        --     log_user_out model
        
        GetActiveReadingList (Err e) -> 
            (model, Cmd.none)
        
        GetActiveReadingList (Ok response) -> 
            ({model | reading_list = response}, Cmd.none)

        



log_user_out : Model -> (Model, Cmd msg)
log_user_out model = ({model | token = Nothing, reading_history = Nothing}, deleteToken "")


view : Model -> Html Msg 
view model = 
    div [class "bg-gray-800 text-white"] [
    case model.token of 
        Nothing -> 
            home_view model 
        Just _ ->
            dashboard_view model 
            -- loggedin_page model 
    ]
