module Uniform.Nav exposing
    ( mainNav
    , mainVerticalNav
    , nav
    , verticalNav
    )

import Html exposing (..)
import Html.Attributes exposing (..)


nav :
    (List (Html.Attribute msg)
     -> List (Html msg)
     -> Html msg
    )
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
nav node attrs html =
    node (class "uniform-nav" :: attrs) html


verticalNav :
    (List (Html.Attribute msg)
     -> List (Html msg)
     -> Html msg
    )
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
verticalNav node attrs =
    nav node (class "-vertical" :: attrs)


mainNav :
    (List (Html.Attribute msg)
     -> List (Html msg)
     -> Html msg
    )
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
mainNav node attrs html =
    node (class "uniform-main-nav" :: attrs)
        [ nav div [] html
        ]


mainVerticalNav :
    (List (Html.Attribute msg)
     -> List (Html msg)
     -> Html msg
    )
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
mainVerticalNav node attrs html =
    mainNav node (class "-vertical" :: attrs) [ nav div [] html ]
