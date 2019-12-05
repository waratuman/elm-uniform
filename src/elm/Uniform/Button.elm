module Uniform.Button exposing
    ( button
    , buttonGroup
    )

import Html exposing (..)
import Html.Attributes exposing (..)


button :
    (List (Html.Attribute msg) -> List (Html msg) -> Html msg)
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
button node attrs html =
    node (class "uniform-button" :: attrs) html


buttonGroup :
    (List (Html.Attribute msg) -> List (Html msg) -> Html msg)
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
buttonGroup node attrs html =
    node (class "uniform-button-group" :: attrs) html
