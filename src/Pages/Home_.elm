module Pages.Home_ exposing (Model, Msg, page)

import Effect exposing (Effect)
import Html exposing (Html)
import Html.Events
import Page exposing (Page)
import Route exposing (Route)
import Shared
import View exposing (View)


page : Shared.Model -> Route () -> Page Model Msg
page shared route =
    Page.new
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- INIT


type alias Model =
    {}


init : () -> ( Model, Effect Msg )
init () =
    ( {}
    , Effect.none
    )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Effect Msg )
update msg model =
    let
        _ =
            Debug.log "Update called"
    in
    case msg of
        NoOp ->
            let
                _ =
                    Debug.log "NoOp called"
            in
            ( model
            , Effect.none
            )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> View Msg
view model =
    { title = "Pages.About"
    , body =
        [ myView
        ]
    }


myView : Html Msg
myView =
    Html.div []
        [ Html.a [ Html.Events.onClick NoOp ] [ Html.text "MyView" ]
        ]
