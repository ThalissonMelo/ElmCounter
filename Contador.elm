module Contador exposing (..)

import Html exposing (div, button, text, beginnerProgram, span)
import Html.Events exposing (onClick)

model = 0

type Msg
    = Increment
    | Decrement

update msg model =
    case msg of
        Increment -> model + 1

        Decrement -> model - 1

view model =
    div []
        [ 
        button [ onClick Increment ] [text "+"]
        , span [] [text (toString model)]
        , button [ onClick Decrement ] [text "-"]
        ]

main =
    beginnerProgram
        { model = model
        , view = view
        , update = update
        }