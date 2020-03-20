-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Grammar.Subscription exposing (..)

import Grammar.Enum.Grammars_select_column
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
import Json.Decode as Decode exposing (Decoder)


type alias GrammarsOptionalArguments =
    { distinct_on : OptionalArgument (List Grammar.Enum.Grammars_select_column.Grammars_select_column)
    , limit : OptionalArgument Int
    , offset : OptionalArgument Int
    , order_by : OptionalArgument (List Grammar.InputObject.Grammars_order_by)
    , where_ : OptionalArgument Grammar.InputObject.Grammars_bool_exp
    }


{-| fetch data from the table: "grammars"

  - distinct\_on - distinct select on columns
  - limit - limit the number of rows returned
  - offset - skip the first n rows. Use only with order\_by
  - order\_by - sort the rows by one or more columns
  - where\_ - filter the rows returned

-}
grammars : (GrammarsOptionalArguments -> GrammarsOptionalArguments) -> SelectionSet decodesTo Grammar.Object.Grammars -> SelectionSet (List decodesTo) RootSubscription
grammars fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { distinct_on = Absent, limit = Absent, offset = Absent, order_by = Absent, where_ = Absent }

        optionalArgs =
            [ Argument.optional "distinct_on" filledInOptionals.distinct_on (Encode.enum Grammar.Enum.Grammars_select_column.toString |> Encode.list), Argument.optional "limit" filledInOptionals.limit Encode.int, Argument.optional "offset" filledInOptionals.offset Encode.int, Argument.optional "order_by" filledInOptionals.order_by (Grammar.InputObject.encodeGrammars_order_by |> Encode.list), Argument.optional "where" filledInOptionals.where_ Grammar.InputObject.encodeGrammars_bool_exp ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "grammars" optionalArgs object_ (identity >> Decode.list)


type alias GrammarsAggregateOptionalArguments =
    { distinct_on : OptionalArgument (List Grammar.Enum.Grammars_select_column.Grammars_select_column)
    , limit : OptionalArgument Int
    , offset : OptionalArgument Int
    , order_by : OptionalArgument (List Grammar.InputObject.Grammars_order_by)
    , where_ : OptionalArgument Grammar.InputObject.Grammars_bool_exp
    }


{-| fetch aggregated fields from the table: "grammars"

  - distinct\_on - distinct select on columns
  - limit - limit the number of rows returned
  - offset - skip the first n rows. Use only with order\_by
  - order\_by - sort the rows by one or more columns
  - where\_ - filter the rows returned

-}
grammars_aggregate : (GrammarsAggregateOptionalArguments -> GrammarsAggregateOptionalArguments) -> SelectionSet decodesTo Grammar.Object.Grammars_aggregate -> SelectionSet decodesTo RootSubscription
grammars_aggregate fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { distinct_on = Absent, limit = Absent, offset = Absent, order_by = Absent, where_ = Absent }

        optionalArgs =
            [ Argument.optional "distinct_on" filledInOptionals.distinct_on (Encode.enum Grammar.Enum.Grammars_select_column.toString |> Encode.list), Argument.optional "limit" filledInOptionals.limit Encode.int, Argument.optional "offset" filledInOptionals.offset Encode.int, Argument.optional "order_by" filledInOptionals.order_by (Grammar.InputObject.encodeGrammars_order_by |> Encode.list), Argument.optional "where" filledInOptionals.where_ Grammar.InputObject.encodeGrammars_bool_exp ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "grammars_aggregate" optionalArgs object_ identity


type alias GrammarsByPkRequiredArguments =
    { id : Grammar.ScalarCodecs.Uuid }


{-| fetch data from the table: "grammars" using primary key columns
-}
grammars_by_pk : GrammarsByPkRequiredArguments -> SelectionSet decodesTo Grammar.Object.Grammars -> SelectionSet (Maybe decodesTo) RootSubscription
grammars_by_pk requiredArgs object_ =
    Object.selectionForCompositeField "grammars_by_pk" [ Argument.required "id" requiredArgs.id (Grammar.ScalarCodecs.codecs |> Grammar.Scalar.unwrapEncoder .codecUuid) ] object_ (identity >> Decode.nullable)
