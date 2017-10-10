module Contador
    exposing
        ( Msg
        , update
        , view
        , main
        )

{-|


# Functions

@docs Msg, update, view, main

# Description

The functions bellow makes a counter

-}

import Html exposing (beginnerProgram, button, div, span, text)
import Html.Events exposing (onClick)


{-| This is a model tha have the initial state of the counter -}


model =
    0

{-|

This type have the messages of the counter

-}
type Msg
    = Increment
    | Decrement


{-|

The update method recives the message when the userclicks
on the button and make the action of incrementor decrement

-}
update: Msg -> Int -> (Int)
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



{-| The view method shows on the screen the buttons and the result of increment and decrement -}
view: Int -> Html.Html Msg
view model =
    div []
        [ button [ onClick Increment ] [ text "+" ]
        , span [] [ text (toString model) ]
        , button [ onClick Decrement ] [ text "-" ]
        ]



{-| The main starts a counter showing on the screen -}
main: Program Never Int Msg 
main =
    beginnerProgram
        { model = model
        , view = view
        , update = update
        }
