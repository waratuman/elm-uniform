# Elm Package for the Uniform UI Library

This package implemenmtation the [Uniform UI](http://uniform-ui.com/) library in
Elm and CSS.

# Example

```elm
view : Model -> Document Msg
view model =
    { title = "Uniform Example"
    , body =
        [ Uniform.mainNav header
            [ Uniform.Attributes.invert ]
            [ ul []
                [ li [] [ a [ href "/" ] [ text "Home" ] ]
                , li [] [ a [ href "/" ] [ text "Link A" ] ]
                , li [] [ a [ href "/" ] [ text "Link B" ] ]
                ]
            , Uniform.dropdown div
                [ Uniform.Attributes.invert ]
                [ Uniform.Icons.menu []
                , ul []
                    [ li []
                        [ a [ ] [ text "Item 1" ]
                        , a [ ] [ text "Item 2" ]
                        , a [ ] [ text "Item 3" ]
                        ]
                    ]
                ]
            ]
        ]
    }
```
