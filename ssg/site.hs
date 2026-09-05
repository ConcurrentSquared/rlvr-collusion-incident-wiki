{-# LANGUAGE OverloadedStrings #-}

import Data.List (isInfixOf, isPrefixOf, isSuffixOf)
import Hakyll
import System.FilePath (replaceExtension, takeFileName)

main :: IO ()
main = hakyllWith config $ do
    match "articles/*.md" $ do
        route $ customRoute $ (`replaceExtension` "html") . takeFileName . toFilePath
        compile $ renderPage defaultContext

    match "LICENSE.md" $ do
        route $ constRoute "license.html"
        compile $ renderPage $ constField "title" "License" <> defaultContext

    match "ssg/css/*" $ do
        route $ gsubRoute "ssg/" (const "")
        compile copyFileCompiler

    match "ssg/templates/*" $ compile templateBodyCompiler

config :: Configuration
config = defaultConfiguration
    { providerDirectory = ".."
    , ignoreFile = \path ->
        takeFileName path `elem` ["notes", "_site", "_cache", "dist-newstyle"]
            || ignoreFile defaultConfiguration path
    }

renderPage :: Context String -> Compiler (Item String)
renderPage context =
    pandocCompiler
        >>= loadAndApplyTemplate "ssg/templates/default.html" context
        >>= pure . fmap (withUrls markdownLink)
        >>= relativizeUrls

-- Keep fragments and queries, and leave external source URLs untouched.
markdownLink :: String -> String
markdownLink url
    | ":" `isInfixOf` url || "//" `isPrefixOf` url = url
    | otherwise =
        let (path, suffix) = break (`elem` ['#', '?']) url
        in if ".md" `isSuffixOf` path
            then replaceExtension path "html" ++ suffix
            else url
