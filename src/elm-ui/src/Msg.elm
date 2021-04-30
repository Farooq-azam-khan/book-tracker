module Msg exposing (..)
import Types exposing (..)
import Http exposing(stringPart)

type Msg = NoOp 
         | UpdateUserName String 
         | UpdatePassword String 
         | LoginAction
         | ToggleLogin
         | LoginSuccessful (Result Http.Error String)
         | BooksGetRequest (Result Http.Error (List Book))
         | HistoryGetRequest (Result Http.Error (List History))
         | ToggleCreateRecord
         | CreateHistoryRecord
         | UpdateHistoryFormBook (Maybe Int)
         | UpdateHistoryStartPage (Maybe Int)
         | UpdateHistoryEndPage (Maybe Int)
         | WasHistoryRecodedSuccessful (Result Http.Error (List History))