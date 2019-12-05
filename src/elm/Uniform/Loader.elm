module Uniform.Loader exposing (inlineLoader, loader)

import Html exposing (..)
import Html.Attributes exposing (..)


loader :
    List (Html.Attribute msg)
    -> Html msg
loader attrs =
    div (class "uniform-loader" :: attrs)
        [ span [] [ text "•" ]
        , span [] [ text "•" ]
        , span [] [ text "•" ]
        ]


inlineLoader :
    List (Html.Attribute msg)
    -> Html msg
inlineLoader attrs =
    div (class "uniform-loader -inline" :: attrs)
        [ span [] [ text "•" ]
        , span [] [ text "•" ]
        , span [] [ text "•" ]
        ]
