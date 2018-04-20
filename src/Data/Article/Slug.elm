module Data.Article.Slug exposing (Slug, decoder, parser, toString)

import Json.Decode as Decode exposing (Decoder)
import Url.Parser


type Slug
    = Slug String


parser : Url.Parser.Parser (Slug -> a) a
parser =
    Url.Parser.custom "SLUG" (Just << Slug)


decoder : Decoder Slug
decoder =
    Decode.map Slug Decode.string


toString : Slug -> String
toString (Slug slug) =
    slug