module Uniform.Dropdown exposing (dropdown)

import Html exposing (..)
import Html.Attributes exposing (..)


dropdown :
    (List (Html.Attribute msg)
     -> List (Html msg)
     -> Html msg
    )
    -> List (Html.Attribute msg)
    -> List (Html msg)
    -> Html msg
dropdown node attrs =
    node (class "uniform-dropdown" :: attrs)



-- module Uniform.Dropdown exposing
--     ( InternalMsg
--     , Msg(..)
--     , State
--     , Translator
--     , init
--     , translator
--     , update
--     , view
--     )
-- import Html exposing (..)
-- import Html.Attributes exposing (..)
-- import Html.Events exposing (..)
-- type alias State =
--     Bool
-- type Msg
--     = InternalMsg InternalMsg
-- type InternalMsg
--     = Toggle
-- type alias Translator msg =
--     Msg -> msg
-- translator :
--     { r
--         | internal : InternalMsg -> msg
--     }
--     -> Translator msg
-- translator { internal } msg =
--     case msg of
--         InternalMsg a ->
--             internal a
-- init : State
-- init =
--     False
-- update : InternalMsg -> State -> ( State, Cmd Msg )
-- update msg state =
--     case msg of
--         Toggle ->
--             ( not state, Cmd.none )
-- view : State -> Translator msg -> Html msg -> Html msg -> Html msg
-- view state translate titleView dropdownView =
--     div [ class "uniform-dropdown", onClick (Toggle |> InternalMsg |> translate) ]
--         (titleView
--             :: (case state of
--                     False ->
--                         []
--                     True ->
--                         [ dropdownView ]
--                )
--         )
