module Model exposing (..)
import Api exposing (..)
import Types exposing (..)
import Msg exposing (..)




type alias Flags = { storedToken : Maybe String }

type alias Model = 
    { user : UserAuthentication
    , books : Maybe (List Book)
    , reading_list : List BookProgress
    , are_you_sure : Bool  -- TODO: rename to `are_you_sure_history`
    , authors : Maybe (List Author)
    , map_toggle : Bool 
    }

init : Flags -> (Model, Cmd Msg) 
init flags =
    let
        maybeToken = Maybe.map Token flags.storedToken
        init_model = { user = LoggedOut (LoginForm "" "" False)
                     , books = Nothing
                     , reading_list = []
                     , are_you_sure = False 
                     , authors = Nothing 
                     , map_toggle = False 
                     }

        init_model_2 = case maybeToken of 
            Nothing -> 
                init_model
            Just token -> 
                let 
                    user_fields = { history_record_form = CreateHistory 0 0 0 False, reading_history = [], create_book_form = Nothing }
                in 
                    {init_model | user = LoggedIn token user_fields}
        -- _ = Debug.log "Flags" maybeToken
        
        auth_commands = case maybeToken of 
            Nothing -> 
                []
            Just token ->
                [getReadingHistory token]
        
        commands = Cmd.batch (List.append auth_commands [getBookProgress, getBooks, get_authors])--, get_topo_json])
    in
        (init_model_2, commands)
