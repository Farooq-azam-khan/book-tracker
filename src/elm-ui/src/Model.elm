module Model exposing (..)
import Api exposing (..)
import Types exposing (..)
import Msg exposing (..)
type alias Flags = { storedToken : Maybe String }


type alias Model = 
    { login_form : LoginForm
    , show_login: Bool
    , token : Maybe Token
    , books : Maybe (List Book)
    , reading_history : Maybe (List History)
    , show_create_record_form : Bool 
    , history_record_form : History 
    , reading_list : List BookProgress
    }

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
                     , history_record_form = History 0 0 0
                     , reading_list = []
                     }
        auth_commands = case maybeToken of 
            Nothing -> 
                []
            Just token ->
                 [getReadingHistory token]
        
        commands = Cmd.batch (List.append auth_commands [getBookProgress])

    in
        (init_model, commands)
