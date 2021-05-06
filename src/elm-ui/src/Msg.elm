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
         | HistoryDeleteRequest (Result Http.Error Int)
         | ToggleCreateRecord
         | CreateHistoryRecord
         | UpdateHistoryFormBook (Maybe Int)
         | UpdateHistoryChapterMark (Maybe Int)
         | UpdateHistoryPageMark (Maybe Int)
         | WasHistoryRecodedSuccessful (Result Http.Error (List History))
         | GetActiveReadingList (Result Http.Error (List BookProgress))
         | StoreTokenAction 
         | LogoutAction
         | DeleteRecordAction Int 
         | AreYouSure