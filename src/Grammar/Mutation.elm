-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Grammar.Mutation exposing (..)

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


type alias DeleteGrammarsRequiredArguments =
    { where_ : Grammar.InputObject.Grammars_bool_exp }


{-| delete data from the table: "grammars"

  - where\_ - filter the rows which have to be deleted

-}
delete_grammars : DeleteGrammarsRequiredArguments -> SelectionSet decodesTo Grammar.Object.Grammars_mutation_response -> SelectionSet (Maybe decodesTo) RootMutation
delete_grammars requiredArgs object_ =
    Object.selectionForCompositeField "delete_grammars" [ Argument.required "where" requiredArgs.where_ Grammar.InputObject.encodeGrammars_bool_exp ] object_ (identity >> Decode.nullable)


type alias InsertGrammarsOptionalArguments =
    { on_conflict : OptionalArgument Grammar.InputObject.Grammars_on_conflict }


type alias InsertGrammarsRequiredArguments =
    { objects : List Grammar.InputObject.Grammars_insert_input }


{-| insert data into the table: "grammars"

  - objects - the rows to be inserted
  - on\_conflict - on conflict condition

-}
insert_grammars : (InsertGrammarsOptionalArguments -> InsertGrammarsOptionalArguments) -> InsertGrammarsRequiredArguments -> SelectionSet decodesTo Grammar.Object.Grammars_mutation_response -> SelectionSet (Maybe decodesTo) RootMutation
insert_grammars fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { on_conflict = Absent }

        optionalArgs =
            [ Argument.optional "on_conflict" filledInOptionals.on_conflict Grammar.InputObject.encodeGrammars_on_conflict ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "insert_grammars" (optionalArgs ++ [ Argument.required "objects" requiredArgs.objects (Grammar.InputObject.encodeGrammars_insert_input |> Encode.list) ]) object_ (identity >> Decode.nullable)


type alias UpdateGrammarsOptionalArguments =
    { set_ : OptionalArgument Grammar.InputObject.Grammars_set_input }


type alias UpdateGrammarsRequiredArguments =
    { where_ : Grammar.InputObject.Grammars_bool_exp }


{-| update data of the table: "grammars"

  - set\_ - sets the columns of the filtered rows to the given values
  - where\_ - filter the rows which have to be updated

-}
update_grammars : (UpdateGrammarsOptionalArguments -> UpdateGrammarsOptionalArguments) -> UpdateGrammarsRequiredArguments -> SelectionSet decodesTo Grammar.Object.Grammars_mutation_response -> SelectionSet (Maybe decodesTo) RootMutation
update_grammars fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { set_ = Absent }

        optionalArgs =
            [ Argument.optional "_set" filledInOptionals.set_ Grammar.InputObject.encodeGrammars_set_input ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "update_grammars" (optionalArgs ++ [ Argument.required "where" requiredArgs.where_ Grammar.InputObject.encodeGrammars_bool_exp ]) object_ (identity >> Decode.nullable)
