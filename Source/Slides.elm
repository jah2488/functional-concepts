module Slides exposing (..)

import Common exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Styles exposing (..)


m : String -> SlideBody -> Slide
m title body =
    newSlide title 45 body


none : SlideBody
none =
    (\_ -> div [] [])


intro =
    m "Functional Concepts In Elm"
        (\_ ->
            div [] []
        )


pic : String -> Html Msg
pic name =
    div [ class "example" ] [ img [ src (name ++ ".png") ] [] ]


sb : List (Html Msg) -> SlideBody
sb content =
    (\_ -> div [] content)


slides =
    [ m "What is Elm?" none
    , m "Elm is" <|
        sb
            [ h3 [] [ text "Strictly Typed" ]
            , h3 [] [ text "Purely Functional" ]
            , h3 [] [ text "Compile To JS" ]
            , h3 [] [ text "Haskell-like" ]
            , h3 [] [ text "etc etc etc..." ]
            ]
    , m "A better way to build web apps" none
    , m "A delightful language for building reliable webapps" none
    , m "Programming Paradigms" <|
        sb
            [ h2 [] [ text "Object Oriented" ]
            , h4 [] [ text "Java, Simula, Ruby" ]
            , h2 [] [ text "Logic" ]
            , h4 [] [ text "SQL, Prolog" ]
            , h2 [] [ text "Functional" ]
            , h4 [] [ text "Clojure, Elixir, Scala, Haskell, Elm" ]
            ]
    , m "Core Concepts in Functional Programming" <|
        sb
            [ h2 [] [ text "Functions" ]
            , h2 [] [ text "Purity" ]
            , h2 [] [ text "Immutability" ]
            , p [] [ text "Recursion, lazy evaluation, garbage collection, type inference, tail call optimization, lexical closures, monadic expressions, provability or 'correctness'." ]
            ]
    , m "Functions are First Class" <|
        sb
            []
    , m "Treat Functions Like Values" <|
        sb
            [ pic "js-fns" ]
    , m "Elm Example" <|
        sb [ pic "elm-fns" ]
    , m "Higher Order Functions" <|
        sb []
    , m "Common in JS" <|
        sb [ pic "higher-order-fn-js" ]
    , m "Similar in Elm" <|
        sb [ pic "higher-order-fn" ]
    , m "Building with Functions" <|
        sb []
    , m "Break Your UI into Pieces" <|
        sb
            [ pic "fn-composition"
            ]
    , m "Functions All The Way Down" <|
        sb
            [ pic "fn-composition-2"
            ]
    , m "Referential Transparency" <|
        sb []
    , m "Same in = Same out" <|
        sb
            [ pic "pure"
            ]
    , m "Functional 'Purity'" <|
        sb []
    , m "No 'Side Effects'" <|
        sb
            [ pic "randomness"
            , pic "randomness-js"
            ]
    , m "Immutability" <|
        sb []
    , m "Assignment can be trusted" <|
        sb []
    , m "Copy instead of mutate" <|
        sb []
    , m "Recursion" <|
        sb
            [ h2 [] [ text "Recursion" ]
            , h3 [] [ text "Recursion" ]
            , h4 [] [ text "Recursion" ]
            , h5 [] [ text "Recursion" ]
            ]
    , m "Who needs loops?" <|
        sb
            [ pic "recursion"
            ]
    , m "It works?" <|
        sb
            [ pic "recursion-js-broken"
            ]
    , m "It works!" <|
        sb
            [ pic "recursion-js"
            ]
    , m "Pattern Matching" <|
        sb []
    , m "When I have X do Y" <|
        sb
            [ pic "pattern-matching"
            ]
    , m "Declarative Programming" <|
        sb
            [ h2 [] [ text "State what you want, let the computer figure it out." ]
            ]
    , m "Declarative Programming is explicit" <|
        sb
            [ h4 [] [ text "(Its Verbose)" ]
            ]
    , m "The End?" <|
        sb
            [ pic "type"
            ]
    , m "Thank you" none
    ]
