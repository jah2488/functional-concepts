module Examples exposing (..)

import Html exposing (..)
import Random


-- First Class Functions


fruit =
    "apple"


bestNumber =
    24


addTwo n =
    n + 2



-- Higher Order Functions


process : List a -> (a -> a) -> List a
process list processor =
    List.map processor list


processedList : List number
processedList =
    process [ 1, 2, 4 ] (\n -> n * 2)


doubleProcessItem : a -> (a -> a) -> a
doubleProcessItem item fn =
    fn <| fn item


twiceTheFun : String
twiceTheFun =
    doubleProcessItem "Hello" (\str -> str ++ "!")



-- Composition with Functions


type Msg
    = NoOp
    | NewNumber Int


type alias Todo =
    { title : String, important : String, complete : String }


type alias Model =
    { user : String, todos : List Todo }


body : Model -> Html Msg
body model =
    div []
        [ title model.user
        , space
        , allTodos model.todos
        , footer
        ]


title user =
    h2 [] [ text <| user ++ "'s Todo List" ]


space =
    hr [] []


allTodos todos =
    ul [] (List.map todoView todos)


todoView todo =
    li []
        [ span [] [ text todo.title ]
        , span [] [ text todo.complete ]
        , span [] [ text <| "Important? " ++ todo.important ]
        ]


footer =
    div [] [ text "Made with 💕" ]



-- Referential Transparency -- Purity


addFour n =
    n + 4



-- Randomness


getRandomInt =
    (Random.generate NewNumber (Random.int 1 100))



-- Immutability
-- Its free... nothing to slideShowStyles
-- Recursion


fizzbuzz : Int -> List String -> List String
fizzbuzz n xs =
    if n <= 0 then
        xs
    else
        let
            result =
                if n % 15 == 0 then
                    "fizzbuzz"
                else if n % 5 == 0 then
                    "buzz"
                else if n % 3 == 0 then
                    "fizz"
                else
                    (toString n)
        in
            -- This is the recursive part
            fizzbuzz (n - 1) (result :: xs)



-- Pattern Matching


guessTheNumber : Maybe Int -> String
guessTheNumber n =
    case n of
        Just 43 ->
            "So close!"

        Just 42 ->
            "You got it!"

        Just 41 ->
            "Almost!"

        Just _ ->
            "Nope!"

        Nothing ->
            "You have to at least try!"
