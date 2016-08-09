module Main exposing (..)

import Html exposing (Html, button, div, text)
import Html.App as App
import Html.Events exposing (onClick)


main =
    App.beginnerProgram { model = 0, view = view, update = update }


type Msg
    = Tambahin
    | Kurangin
    | Reset


update msg model =
    case msg of
        Tambahin ->
            model + 1

        Kurangin ->
            model - 1

        Reset ->
            0


view model =
    div []
        [ button [ onClick Kurangin ] [ text "-" ]
        , div [] [ text (toString model) ]
        , button [ onClick Tambahin ] [ text "+" ]
        , button [ onClick Reset ] [ text "Reset" ]
        ]
