module Uniform exposing
    ( button, buttonGroup
    , buttonInput, card, cardBody, cardFooter, cardHeader, checkboxInput, dateInput, dropdown, emailInput, emptyLabel, form, formGroup, grid, inlineLoader, inputBuilder, label, loader, mainNav, mainVerticalNav, modal, modalTranslator, nav, passwordInput, pill, select, selectButton, submitInput, table, textInput, textarea, thumb, verticalNav
    )

{-| Elm implementation of the [Uniform](http://uniform-ui.com/) HTML/CSS library.


# Alert


# Buttons

@docs button, buttonGroup

-}

import Html exposing (..)
import Html.Attributes exposing (..)
import Uniform.Alert as Alert
import Uniform.Button as Button
import Uniform.Card as Card
import Uniform.Dropdown as Dropdown
import Uniform.Form as Form
import Uniform.Loader as Loader
import Uniform.Modal as Modal
import Uniform.Nav as Nav
import Uniform.Pill as Pill
import Uniform.Table as Table
import Uniform.Thumb as Thumb


{-| An [`alert`](http://uniform-ui.com/alert/) that provides feedback messages to users.

    Uniform.alert div
        []
        [ text "This is an alert message." ]

-}
alert :
    (List (Html.Attribute msg) -> List (Html msg) -> Html msg)
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
alert =
    Alert.alert


{-| A [`button`](http://uniform-ui.com/button/) element.

For example:

    Uniform.button a
        []
        [ text "Submit"
        ]

    Uniform.button button
        [ type_ "button" ]
        [ text "Submit"
        ]

-}
button :
    (List (Html.Attribute msg) -> List (Html msg) -> Html msg)
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
button =
    Button.button


{-| A input element that has a type of `"button"`.

For example:

    Uniform.buttonInput
        []
        [ text "Submit"
        ]

This is the same as calling Uniform.button with a input element:

    Uniform.button input
        [ type_ "button" ]
        [ text "Submit"
        ]

[Uniform documentation](http://uniform-ui.com/button/)

-}
buttonInput :
    List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
buttonInput =
    Form.button


{-| A [button group](http://uniform-ui.com/button/).

Example:

    Uniform.buttonGroup div
        []
        [ Uniform.button button [] [ text "Button A" ]
        , Uniform.button button [] [ text "Button B" ]
        ]

-}
buttonGroup :
    (List (Html.Attribute msg) -> List (Html msg) -> Html msg)
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
buttonGroup =
    Button.buttonGroup


{-| A [`card`](http://uniform-ui.com/card/) component.

Example:

    Uniform.card div
        []
        [ text "A card."
        ]

-}
card :
    (List (Html.Attribute msg) -> List (Html msg) -> Html msg)
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
card =
    Card.card


{-| A [`cardBody`](http://uniform-ui.com/card/) element.

Example:

    Uniform.card div
        []
        [ Uniform.cardHeader [] [ h1 [] [ text "Header" ] ]
        , Uniform.cardBody [] [ text "Body" ] ]
        , Uniform.cardFooter [] [ text "Footer" ]
        ]

-}
cardBody : List (Html.Attribute msg) -> List (Html msg) -> Html msg
cardBody =
    Card.body


{-| A [`cardFooter`](http://uniform-ui.com/card/) element.

Example:

    Uniform.card div
        []
        [ Uniform.cardHeader [] [ h1 [] [ text "Header" ] ]
        , Uniform.cardBody [] [ text "Body" ] ]
        , Uniform.cardFooter [] [ text "Footer" ]
        ]

-}
cardFooter : List (Html.Attribute msg) -> List (Html msg) -> Html msg
cardFooter =
    Card.footer


{-| A [`cardHeader`](http://uniform-ui.com/card/) element.

Example:

    Uniform.card div
        []
        [ Uniform.cardHeader [] [ h1 [] [ text "Header" ] ]
        , Uniform.cardBody [] [ text "Body" ] ]
        , Uniform.cardFooter [] [ text "Footer" ]
        ]

-}
cardHeader : List (Html.Attribute msg) -> List (Html msg) -> Html msg
cardHeader =
    Card.header


dropdown =
    Dropdown.dropdown


dateInput =
    Form.date


emailInput =
    Form.email


form =
    Form.form


formGroup =
    Form.group


inputBuilder =
    Form.inputBuilder


label =
    Form.label


emptyLabel =
    Form.emptyLabel


passwordInput =
    Form.password


select =
    Form.select


selectButton =
    Form.selectButton


submitInput =
    Form.submit


checkboxInput =
    Form.checkbox


textInput =
    Form.text


textarea =
    Form.textarea


thumb =
    Thumb.thumb


loader =
    Loader.loader


inlineLoader =
    Loader.inlineLoader


mainNav =
    Nav.mainNav


mainVerticalNav =
    Nav.mainVerticalNav


nav =
    Nav.nav


verticalNav =
    Nav.verticalNav


table =
    Table.table


grid =
    Table.grid


pill =
    Pill.pill


modal =
    Modal.modal


modalTranslator =
    Modal.translator
