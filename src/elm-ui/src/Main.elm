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
import Api exposing ( sendCreateBookPostRequest
                    , getReadingHistory
                    , sendHistoryRecord
                    , sendLoginRequest
                    , getBookProgress
                    , deleteHistory
                    )
import Ports exposing (storeToken, deleteToken, toggle_map)
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
        ToggleMap -> 
            ({model | map_toggle = not model.map_toggle}, toggle_map (not model.map_toggle))
        AreYouSure -> 
            ({model | are_you_sure = not model.are_you_sure}, Cmd.none)
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

        LoginAction -> 
            case model.user of 
                LoggedOut login_form -> 
                    (model, sendLoginRequest login_form) 
                _ -> 
                    (model, Cmd.none)
        
        CreateHistoryRecord -> 
            case model.user of 
                LoggedIn token user_alias -> 
                    (model, sendHistoryRecord token user_alias.history_record_form)
                _ -> 
                    (model, Cmd.none)
        
        PostCreateBook ->
            case model.user of 
                LoggedIn token user_alias -> 
                    case user_alias.create_book_form of 
                        Nothing -> (model, Cmd.none)
                        Just book_form ->
                            (model, sendCreateBookPostRequest token book_form)
                _ -> (model, Cmd.none)

        CreateBookRequest (Err e) -> 
            (model, Cmd.none)

        CreateBookRequest (Ok val) -> 
                (model, Cmd.none)
        

        UpdateHistoryFormBook Nothing -> 
            (model, Cmd.none)

        UpdateHistoryFormBook (Just val) -> 
            ({model | user = update_history_record_form model.user (BookField val)}, Cmd.none) 
        UpdateHistoryPageMark Nothing -> 
            (model, Cmd.none)

        UpdateHistoryPageMark (Just val) -> 
            ({model | user = update_history_record_form model.user (PageMarkField val)}, Cmd.none) 

        UpdateHistoryChapterMark Nothing -> 
            (model, Cmd.none)

        UpdateHistoryChapterMark (Just val) ->
            ({model | user = update_history_record_form model.user (ChapterMarkField val)}, Cmd.none) 
   
        
        UpdateBookForm action -> 
            ({model | user = update_book_form model.user action}, Cmd.none)

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
                user_alias = { history_record_form = CreateHistory 0 0 0 False, reading_history = [], create_book_form = Nothing }
                new_user = LoggedIn (Token response) user_alias 
                commands = Cmd.batch [storeToken response, getReadingHistory (Token response)]
            in
                ({model | user = new_user}, commands)
    

        -- TODO: handle view 
        BooksGetRequest (Err _) -> 
            (model, Cmd.none) 
        
        
        
        BooksGetRequest (Ok response) -> 
            ({model | books = Just response}, Cmd.none)

        AuthorsGetRequest (Ok r) -> 
            ({model | authors = Just r}, Cmd.none)
        
        AuthorsGetRequest (Err _) -> 
            (model, Cmd.none)
        HistoryGetRequest (Err (Http.BadStatus 401)) -> 
                log_user_out model 
        
        HistoryGetRequest (Err _) -> 
                (model, Cmd.none)

        HistoryGetRequest (Ok response) ->
            let 
                new_user = case model.user of 
                            LoggedIn token user_alias -> 
                                LoggedIn token ({user_alias | reading_history = response})
                            _ -> model.user
            in 
            -- (model, Cmd.none)
                ({model | user = new_user }, Cmd.none)
        
        ToggleCreateRecord -> 
            ({model | user = update_history_record_form model.user ShowHistForm}, Cmd.none)

        WasHistoryRecodedSuccessful (Err _) -> 
                (model, Cmd.none) 

        WasHistoryRecodedSuccessful (Ok response) -> 
            let 
                nu1 = update_history_record_form model.user ShowHistForm
                new_user = case nu1 of 
                            LoggedIn token user_alias -> 
                                let 
                                    updated_rh = List.append response user_alias.reading_history
                                in 
                                    LoggedIn token ({user_alias | reading_history = updated_rh})
                            _ -> 
                                model.user 
            in 
                ({model | user = new_user}, getBookProgress)
      
        LogoutAction ->
            log_user_out model 

        StoreTokenAction -> 
            (model, Cmd.none)
      
        
        GetActiveReadingList (Err e) -> 
            (model, Cmd.none)
        
        GetActiveReadingList (Ok response) -> 
            ({model | reading_list = response}, Cmd.none)
        

        DeleteRecordAction hist_id -> 
            case model.user of 
                LoggedIn token _ -> 
                    (model, deleteHistory token hist_id)
                _ -> 
                    (model, Cmd.none)

        HistoryDeleteRequest (Err e) -> 
            (model, Cmd.none)
        
        HistoryDeleteRequest (Ok response) -> 
            case model.user of 
                LoggedIn token user_alias -> 
                    let 
                        filt_hist = List.filter (\hist -> not (hist.id == response)) user_alias.reading_history
                        new_user_alias = {user_alias | reading_history = filt_hist}
                        
                    in 
                        ({model | user = LoggedIn token new_user_alias, are_you_sure=not model.are_you_sure}, Cmd.none)
                _ ->  (model, Cmd.none)

        WorldAtlasJson (Err e) -> 
            (model, Cmd.none)

        WorldAtlasJson (Ok response) -> 
            let 
                _ = Debug.log "world atlas response" response 
            in 
                (model, Cmd.none)
        




update_book_form : UserAuthentication -> BookFormFields -> UserAuthentication
update_book_form user field = 
    case user of 
        LoggedIn token user_alias -> 
            let
                form_values = case field of 
                                ToggleBookForm -> 
                                    case user_alias.create_book_form of 
                                        Nothing -> 
                                            Just init_create_book
                                        Just _ -> 
                                            Nothing 
                                ChangeName name -> 
                                    case user_alias.create_book_form of 
                                        Just bk -> 
                                            Just {bk | name = name }
                                        Nothing -> Nothing 
                                PageCount (Just page_num) -> 
                                    case user_alias.create_book_form of 
                                        Just bk -> 
                                            Just {bk | total_pages = page_num}
                                        _ -> Nothing 
                                PageCount _ -> 
                                    user_alias.create_book_form

                                ChapterCount (Just ch_num) -> 
                                    case user_alias.create_book_form of 
                                        Just bk -> 
                                            Just {bk | total_chapters = ch_num}
                                        _ -> Nothing 
                                ChapterCount _ -> 
                                    user_alias.create_book_form
                                
                                BookAuthor (Just authorId) -> 
                                    case user_alias.create_book_form of 
                                        Just bk -> 
                                            Just {bk | author = authorId}
                                        Nothing -> Nothing 
                                BookAuthor _ -> 
                                    user_alias.create_book_form 


                                
            in 
                LoggedIn token ({user_alias | create_book_form = form_values})
        _ -> user 

type HistoryFormFieldType = BookField Int | PageMarkField Int | ChapterMarkField Int | ShowHistForm
update_history_record_form : UserAuthentication -> HistoryFormFieldType -> UserAuthentication
update_history_record_form user field  = 
    case user of 
        LoggedIn token user_alias -> 
            let    
                old_hist = user_alias.history_record_form
                new_hist = case field of 
                    BookField val -> 
                        {old_hist | book = val}
                    PageMarkField val -> 
                        {old_hist | page_mark = val}
                    ChapterMarkField val -> 
                        {old_hist | chapter_mark = val}
                    ShowHistForm -> 
                        {old_hist | show_form = (not old_hist.show_form)}
            in
                LoggedIn token ({user_alias | history_record_form = new_hist})

        _ -> user 


log_user_out : Model -> (Model, Cmd msg)
-- log_user_out model = ({model | token = Nothing, reading_history = Nothing}, deleteToken "")
log_user_out model = 
    let 
        new_user = LoggedOut (LoginForm "" "" False)
    in 
    ({model | user = new_user} , deleteToken "")


-- toggle_map_btn : Html Msg 
-- toggle_map_btn = button [onClick ToggleMap, class "text-md px-4 py-3 bg-gray-100 text-black font-semibold"] [text "Toggle Map"]

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
