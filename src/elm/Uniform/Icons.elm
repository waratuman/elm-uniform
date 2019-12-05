module Uniform.Icons exposing
    ( add
    , archive
    , check
    , clear
    , close
    , delete
    , edit
    , history
    , menu
    , merge
    , remove
    )

import Html exposing (Attribute, Html, i)
import Html.Attributes exposing (..)
import Svg exposing (path, svg)
import Svg.Attributes exposing (d, fill, transform, viewBox)


archive : List (Attribute msg) -> Html msg
archive attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M0 0h24v24H0z", fill "none" ]
                []
            , path
                [ d "M20.54 5.23l-1.39-1.68C18.88 3.21 18.47 3 18 3H6c-.47 0-.88.21-1.16.55L3.46 5.23C3.17 5.57 3 6.02 3 6.5V19c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V6.5c0-.48-.17-.93-.46-1.27zM12 17.5L6.5 12H10v-2h4v2h3.5L12 17.5zM5.12 5l.81-1h12l.94 1H5.12z" ]
                []
            ]
        ]


check : List (Attribute msg) -> Html msg
check attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M0 0h24v24H0z", fill "none" ]
                []
            , path
                [ d "M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z" ]
                []
            ]
        ]


clear : List (Attribute msg) -> Html msg
clear attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M0 0h24v24H0z", fill "none" ]
                []
            , path
                [ d "M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" ]
                []
            ]
        ]


close : List (Attribute msg) -> Html msg
close attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" ] []
            , path [ d "M0 0h24v24H0z", fill "none" ] []
            ]
        ]


delete : List (Attribute msg) -> Html msg
delete attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z" ] []
            , path [ d "M0 0h24v24H0z", fill "none" ] []
            ]
        ]


edit : List (Attribute msg) -> Html msg
edit attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M3 17.25V21h3.75L17.81 9.94l-3.75-3.75L3 17.25zM20.71 7.04c.39-.39.39-1.02 0-1.41l-2.34-2.34c-.39-.39-1.02-.39-1.41 0l-1.83 1.83 3.75 3.75 1.83-1.83z" ] []
            , path [ d "M0 0h24v24H0z", fill "none" ] []
            ]
        ]


history : List (Attribute msg) -> Html msg
history attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M0 0h24v24H0z", fill "none" ] []
            , path [ d "M13 3c-4.97 0-9 4.03-9 9H1l3.89 3.89.07.14L9 12H6c0-3.87 3.13-7 7-7s7 3.13 7 7-3.13 7-7 7c-1.93 0-3.68-.79-4.94-2.06l-1.42 1.42C8.27 19.99 10.51 21 13 21c4.97 0 9-4.03 9-9s-4.03-9-9-9zm-1 5v5l4.28 2.54.72-1.21-3.5-2.08V8H12z" ] []
            ]
        ]


merge : List (Attribute msg) -> Html msg
merge attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M0 0h24v24H0z", fill "none" ] []
            , path [ d "M17 20.41L18.41 19 15 15.59 13.59 17 17 20.41zM7.5 8H11v5.59L5.59 19 7 20.41l6-6V8h3.5L12 3.5 7.5 8z" ] []
            ]
        ]


menu : List (Attribute msg) -> Html msg
menu attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M0 0h24v24H0z", fill "none" ] []
            , path [ d "M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z" ] []
            ]
        ]


add : List (Attribute msg) -> Html msg
add attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M0 0h24v24H0V0z", fill "none" ] []
            , path [ d "M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z" ] []
            ]
        ]


remove : List (Attribute msg) -> Html msg
remove attrs =
    i (class "uniform-icon" :: attrs)
        [ svg [ viewBox "0 0 24 24" ]
            [ path [ d "M0 0h24v24H0V0z", fill "none" ] []
            , path [ d "M19 13H5v-2h14v2z" ] []
            ]
        ]
