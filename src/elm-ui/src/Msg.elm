module Msg exposing (..)
import Types exposing (..)
import Http exposing(stringPart)
import WorldMapTypes exposing (WorldMap)
type BookFormFields 
    = ToggleBookForm 
    | ChangeName String 
    | PageCount (Maybe Int) 
    | ChapterCount (Maybe Int) 
    | BookAuthor (Maybe Int)

type Msg = NoOp 
         | UpdateUserName String 
         | UpdatePassword String 
         | LoginAction
         | ToggleLogin
         | LoginSuccessful (Result Http.Error String)
         | BooksGetRequest (Result Http.Error (List Book))
         | HistoryGetRequest (Result Http.Error (List History))
         | HistoryDeleteRequest (Result Http.Error Int)
         -- Navbar Actions
         | ToggleCreateRecord
         | CreateHistoryRecord
         | PostCreateBook
         | UpdateHistoryFormBook (Maybe Int)
         | UpdateHistoryChapterMark (Maybe Int)
         | UpdateHistoryPageMark (Maybe Int)
         | WasHistoryRecodedSuccessful (Result Http.Error (List History))
         | GetActiveReadingList (Result Http.Error (List BookProgress))
         | StoreTokenAction 
         | LogoutAction
         | DeleteRecordAction Int 
         | AreYouSure
         | UpdateBookForm BookFormFields
         | CreateBookRequest (Result Http.Error Book)
         | AuthorsGetRequest (Result Http.Error (List Author))
         | WorldAtlasJson (Result Http.Error WorldMap)
         | ToggleMap 
