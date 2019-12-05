module Uniform.Table exposing (grid, table)

import Html exposing (..)
import Html.Attributes exposing (..)


table : List (Html.Attribute msg) -> List (Html msg) -> Html msg
table attrs html =
    Html.table (class "uniform-table" :: attrs) html


grid :
    (List (Html.Attribute msg) -> List (Html msg) -> Html msg)
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
grid node attrs html =
    node (class "uniform-grid" :: attrs) html
