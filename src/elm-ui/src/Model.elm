module Model exposing (..)


import Types exposing (..)

type alias Model = 
    { login_form : LoginForm
    , show_login: Bool
    , token : Maybe Token
    , books : Maybe (List Book)
    , reading_history : Maybe (List History)
    , show_create_record_form : Bool 
    , history_record_form : History 
    }