module Uniform.Thumb exposing (thumb)

import Html exposing (..)
import Html.Attributes exposing (..)


thumb :
    (List (Html.Attribute msg) -> List (Html msg) -> Html msg)
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
thumb node attrs html =
    node (class "uniform-thumb" :: attrs) html
