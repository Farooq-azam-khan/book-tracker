module Model exposing (..)
import Api exposing (..)
import Types exposing (..)
import Msg exposing (..)

type alias Flags = { storedToken : Maybe String }

type alias Model = 
    { user : UserAuthentication
    , books : Maybe (List Book)
    , show_create_record_form : Bool 
    , reading_list : List BookProgress
    }

init : Flags -> (Model, Cmd Msg) 
init flags =
    let
        maybeToken = Maybe.map Token flags.storedToken
        init_model = { user = LoggedOut (LoginForm "" "" False)
                     , books = Nothing
                     , show_create_record_form = False 
                     , reading_list = []
                     }

        init_model_2 = case maybeToken of 
            Nothing -> 
                init_model
            Just token -> 
                {init_model | user = LoggedIn token ({ history_record_form = CreateHistory 0 0 0, reading_history = Nothing})}
        -- _ = Debug.log "Flags" maybeToken
        
        auth_commands = case maybeToken of 
            Nothing -> 
                []
            Just token ->
                [getReadingHistory token]
        
        commands = Cmd.batch (List.append auth_commands [getBookProgress, getBooks])
    in
        (init_model_2, commands)
