module Uniform.Form exposing
    ( button
    , checkbox
    , date
    , email
    , emptyLabel
    , form
    , group
    , inputBuilder
    , label
    , password
    , select
    , selectButton
    , submit
    , text
    , textarea
    )

import Html exposing (..)
import Html.Attributes exposing (..)


button :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
button =
    inputBuilder "button"


checkbox :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
checkbox =
    inputBuilder "checkbox"


date :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
date =
    inputBuilder "date"


email :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
email =
    inputBuilder "email"


inputBuilder :
    String
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
inputBuilder t attrs html =
    input
        (List.append [ type_ t, class "uniform-input" ] attrs)
        html


label : String -> List (Html.Attribute msg) -> Html msg -> Html msg
label name attrs html =
    Html.label (class "uniform-label" :: attrs)
        [ div [] [ Html.text name ]
        , html
        ]


emptyLabel : String -> List (Html.Attribute msg) -> Html msg
emptyLabel name attrs =
    Html.label (class "uniform-label" :: attrs)
        [ div [] [ Html.text name ]
        ]


password :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
password =
    inputBuilder "password"


submit :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
submit attrs =
    inputBuilder "submit"
        (class "uniform-button"
            :: value "Submit"
            :: attrs
        )


text :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
text =
    inputBuilder "text"


textarea :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
textarea attrs html =
    Html.textarea
        (List.append [ class "uniform-input" ] attrs)
        html


group :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
group attrs html =
    div (class "uniform-form-group" :: attrs) html


form :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
form attrs html =
    Html.form (class "uniform-form" :: attrs) html


select : List (Html.Attribute msg) -> List (Html msg) -> Html msg
select attrs html =
    Html.select (class "uniform-input" :: attrs) html


selectButton : List (Html.Attribute msg) -> List (Html msg) -> Html msg
selectButton attrs html =
    Html.select (class "uniform-button" :: attrs) html
