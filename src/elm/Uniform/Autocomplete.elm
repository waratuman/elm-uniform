module Uniform.Autocomplete exposing
    ( InternalMsg
    , Msg(..)
    , State
    , Translator
    , clear
    , init
    , onKeyDown
    , setOptions
    , translator
    , update
    , view
    )

import Char
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Decode as Json
import List.Extra as List
import Maybe
import Task


type alias State a =
    { value : Maybe String
    , focus : Maybe a
    , placeholder : String
    , options : Maybe (List a)
    , identifier : a -> String
    , stringifier : a -> String
    , ulDisplay : String
    , mouseIn : Bool
    }


type Msg a
    = InternalMsg (InternalMsg a)
    | Select a
    | SetValue String


type InternalMsg a
    = InternalSelect a
    | InternalSetValue String
    | KeyDown Int
    | MouseEnter
    | MouseLeave
    | Blur


type alias Translator msg a =
    Msg a -> msg


translator :
    { r
        | internal : InternalMsg a -> msg
        , select : a -> msg
        , setValue : String -> msg
    }
    -> Translator msg a
translator { internal, select, setValue } msg =
    case msg of
        InternalMsg a ->
            internal a

        Select a ->
            select a

        SetValue value ->
            setValue value


init : Maybe a -> (a -> String) -> (a -> String) -> State a
init value stringifier identifier =
    { value = Maybe.map stringifier value
    , focus = Nothing
    , placeholder = ""
    , stringifier = stringifier
    , identifier = identifier
    , options = Nothing
    , ulDisplay = "none"
    , mouseIn = False
    }


view : State a -> Html (Msg a)
view s =
    div
        [ class "uniform-autocomplete"
        ]
        (input
            ((case s.value of
                Just v ->
                    [ value v ]

                Nothing ->
                    []
             )
                ++ [ type_ "text"
                   , onInput (\x -> InternalMsg (InternalSetValue x))
                   , onKeyDown (\x -> KeyDown x |> InternalMsg)
                   , onBlur (InternalMsg Blur)
                   , Html.Attributes.form "uniform-autocomplete-fake-form"
                   , autocomplete False
                   , placeholder s.placeholder
                   ]
            )
            []
            :: [ ul
                    [ style "display" s.ulDisplay
                    , onMouseEnter (InternalMsg MouseEnter)
                    , onMouseLeave (InternalMsg MouseLeave)
                    ]
                    (case s.options of
                        Nothing ->
                            [ li [] [ text "Loading…" ] ]

                        Just [] ->
                            [ li [] [ text "No results" ] ]

                        Just options ->
                            List.map
                                (\o ->
                                    li
                                        [ onClick (InternalMsg (InternalSelect o))
                                        , classList
                                            [ ( "focus"
                                              , Maybe.withDefault False
                                                    (Maybe.map (\a -> s.identifier a == s.identifier o) s.focus)
                                              )
                                            ]
                                        ]
                                        [ text (s.stringifier o) ]
                                )
                                options
                    )
               ]
        )


clear : State a -> State a
clear state =
    { state | value = Just "" }


update : InternalMsg a -> State a -> ( State a, Cmd (Msg a) )
update msg m =
    case msg of
        InternalSelect a ->
            ( { m
                | value = Just (m.stringifier a)
                , ulDisplay = "none"
              }
            , Task.succeed a
                |> Task.perform Select
            )

        MouseEnter ->
            ( { m | mouseIn = True }, Cmd.none )

        MouseLeave ->
            ( { m | mouseIn = False }, Cmd.none )

        Blur ->
            ( { m
                | ulDisplay =
                    if m.mouseIn then
                        m.ulDisplay

                    else
                        "none"
              }
            , Cmd.none
            )

        InternalSetValue v ->
            ( { m | value = Nothing, focus = Nothing }
            , Task.succeed (SetValue v)
                |> Task.perform identity
            )

        -- TAB
        KeyDown 9 ->
            ( { m | ulDisplay = "none" }, Cmd.none )

        -- CR
        KeyDown 13 ->
            case m.focus of
                Nothing ->
                    ( m, Cmd.none )

                Just a ->
                    update
                        (InternalSelect a)
                        { m | ulDisplay = "none" }

        -- ESC
        KeyDown 27 ->
            ( { m | ulDisplay = "none" }, Cmd.none )

        -- ↑
        KeyDown 38 ->
            ( { m
                | ulDisplay = "flex"
                , focus =
                    case m.focus of
                        Nothing ->
                            Maybe.andThen List.last m.options

                        Just f ->
                            case m.options of
                                Nothing ->
                                    Nothing

                                Just options ->
                                    Maybe.andThen
                                        (\i -> List.getAt (i - 1) options)
                                        (List.elemIndex f options)
              }
            , Cmd.none
            )

        -- ↓
        KeyDown 40 ->
            ( { m
                | ulDisplay = "flex"
                , focus =
                    case m.focus of
                        Nothing ->
                            Maybe.andThen List.head m.options

                        Just f ->
                            case m.options of
                                Nothing ->
                                    Nothing

                                Just options ->
                                    Maybe.andThen
                                        (\i -> List.getAt (i + 1) options)
                                        (List.elemIndex f options)
              }
            , Cmd.none
            )

        KeyDown k ->
            ( { m
                | ulDisplay = "flex"
              }
            , Cmd.none
            )


setOptions : Maybe (List a) -> State a -> State a
setOptions options state =
    { state | options = options }


onKeyDown : (Int -> msg) -> Attribute msg
onKeyDown tagger =
    on
        "keydown"
        (Json.map tagger keyCode)
