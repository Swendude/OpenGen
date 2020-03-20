-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Grammar.Object.Grammars exposing (..)

import Grammar.InputObject
import Grammar.Interface
import Grammar.Object
import Grammar.Scalar
import Grammar.ScalarCodecs
import Grammar.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


desciption : SelectionSet (Maybe String) Grammar.Object.Grammars
desciption =
    Object.selectionForField "(Maybe String)" "desciption" [] (Decode.string |> Decode.nullable)


type alias GrammarOptionalArguments =
    { path : OptionalArgument String }


{-|

  - path - JSON select path

-}
grammar : (GrammarOptionalArguments -> GrammarOptionalArguments) -> SelectionSet Grammar.ScalarCodecs.Jsonb Grammar.Object.Grammars
grammar fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { path = Absent }

        optionalArgs =
            [ Argument.optional "path" filledInOptionals.path Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForField "ScalarCodecs.Jsonb" "grammar" optionalArgs (Grammar.ScalarCodecs.codecs |> Grammar.Scalar.unwrapCodecs |> .codecJsonb |> .decoder)


{-| An object relationship
-}
grammar_parent : SelectionSet decodesTo Grammar.Object.Grammars -> SelectionSet (Maybe decodesTo) Grammar.Object.Grammars
grammar_parent object_ =
    Object.selectionForCompositeField "grammar_parent" [] object_ (identity >> Decode.nullable)


id : SelectionSet Grammar.ScalarCodecs.Uuid Grammar.Object.Grammars
id =
    Object.selectionForField "ScalarCodecs.Uuid" "id" [] (Grammar.ScalarCodecs.codecs |> Grammar.Scalar.unwrapCodecs |> .codecUuid |> .decoder)


name : SelectionSet (Maybe String) Grammar.Object.Grammars
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


parent : SelectionSet Grammar.ScalarCodecs.Uuid Grammar.Object.Grammars
parent =
    Object.selectionForField "ScalarCodecs.Uuid" "parent" [] (Grammar.ScalarCodecs.codecs |> Grammar.Scalar.unwrapCodecs |> .codecUuid |> .decoder)
