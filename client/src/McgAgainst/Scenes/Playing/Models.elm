module McgAgainst.Scenes.Playing.Models exposing (Model, ShownPlayedCards, ShownCard)

import Random
import McgAgainst.Models.Game.Round as Round
import McgAgainst.Scenes.History.Models as History


{-| The state of the lobby.
-}
type alias Model =
    { picked : List String
    , considering : Maybe Int
    , finishedRound : Maybe Round.FinishedRound
    , shownPlayed : ShownPlayedCards
    , seed : Random.Seed
    , history : Maybe History.Model
    }


type alias ShownPlayedCards =
    { animated : List ShownCard
    , toAnimate : List ShownCard
    }


type alias ShownCard =
    { rotation : Int
    , horizontalPos : Int
    , isLeft : Bool
    , verticalPos : Int
    }
