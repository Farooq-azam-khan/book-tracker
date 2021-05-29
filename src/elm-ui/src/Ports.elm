port module Ports exposing (..)
import Msg exposing (..)
import Types exposing (Token(..))

port storeToken : String -> Cmd msg 
port deleteToken : String -> Cmd msg 

port toggle_map : Bool -> Cmd msg 