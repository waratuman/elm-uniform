module Uniform.Card exposing
    ( body
    , card
    , footer
    , header
    )

import Html exposing (..)
import Html.Attributes exposing (..)


card :
    (List (Html.Attribute msg)
     -> List (Html msg)
     -> Html msg
    )
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
card node attrs html =
    node (class "uniform-card" :: attrs) html


header : List (Html.Attribute msg) -> List (Html msg) -> Html msg
header attrs html =
    Html.div (class "uniform-card-header" :: attrs) html


footer : List (Html.Attribute msg) -> List (Html msg) -> Html msg
footer attrs html =
    Html.div (class "uniform-card-footer" :: attrs) html


body : List (Html.Attribute msg) -> List (Html msg) -> Html msg
body attrs html =
    Html.div (class "uniform-card-body" :: attrs) html
