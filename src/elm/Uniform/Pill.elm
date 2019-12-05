module Uniform.Pill exposing (pill)

import Html exposing (..)
import Html.Attributes exposing (..)


pill :
    (List (Html.Attribute msg)
     -> List (Html msg)
     -> Html msg
    )
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
pill node attrs html =
    node (class "uniform-pill" :: attrs) html
