module Main exposing (..)

import Html
import Html.Attributes
import Html.Events


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = init
        , view = view
        , update = update
        }



-- Model


type alias Model =
    { currentText : String }


init : Model
init =
    { currentText = "" }



-- Update


type Msg
    = SetCurrentText String


update : Msg -> Model -> Model
update msg model =
    case msg of
        SetCurrentText newText ->
            -- currently, this does nothing!
            model



-- View


view : Model -> Html.Html Msg
view model =
    Html.div
        []
        [ Html.node "link"
            [ Html.Attributes.rel "stylesheet"
            , Html.Attributes.href "stylesheets/main.css"
            ]
            []
        , Html.nav
            []
            [ Html.div
                [ Html.Attributes.class "nav-wrapper light-blue lighten-2" ]
                [ Html.div
                    [ Html.Attributes.class "brand-logo center" ]
                    [ Html.text "Elmoji Translator" ]
                ]
            ]
        , Html.section
            [ Html.Attributes.class "container" ]
            [ Html.div
                [ Html.Attributes.class "input-field" ]
                [ Html.input
                    [ Html.Attributes.type_ "text"
                    , Html.Attributes.class "center"
                    , Html.Attributes.placeholder "Let's Translate!"
                    , Html.Events.onInput SetCurrentText
                    ]
                    []
                ]
            ]
        ]
