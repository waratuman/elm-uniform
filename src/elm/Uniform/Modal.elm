module Uniform.Modal exposing (Msg(..), modal, translator)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Decode as Decode


type Msg
    = Close


type alias Translator msg =
    Msg -> msg


translator : { close : msg } -> Translator msg
translator { close } msg =
    case msg of
        Close ->
            close


modal :
    (List (Html.Attribute msg) -> List (Html msg) -> Html msg)
    -> msg
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
modal node closeMsg attrs html =
    node (class "uniform-modal" :: attrs)
        [ div
            [ onClick closeMsg
            , class "uniform-modal-overlay"
            ]
            []
        , div
            [ class "uniform-modal-content uniform-card"
            ]
            html
        ]
