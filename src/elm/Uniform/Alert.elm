module Uniform.Alert exposing (alert)

import Html exposing (..)
import Html.Attributes exposing (..)


alert :
    (List (Html.Attribute msg) -> List (Html msg) -> Html msg)
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
alert node attrs html =
    node (class "uniform-alert" :: attrs)
        [ div [ class "uniform-alert-body" ] html ]
