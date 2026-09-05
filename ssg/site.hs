{-# LANGUAGE OverloadedStrings #-}

import Data.List (isInfixOf, isPrefixOf, isSuffixOf)
import Hakyll
import System.FilePath (replaceExtension, takeFileName)

main :: IO ()
main = hakyllWith config $ do
    match "README.md" $ do
        route $ constRoute "index.html"
        compile $ renderPage (constField "title" "RLVR Collusion Incident Wiki" <> defaultContext)

    match "articles/*.md" $ do
        route $ customRoute articleRoute
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

articleRoute :: Identifier -> FilePath
articleRoute identifier
    | takeFileName (toFilePath identifier) == "index.md" = "article-index.html"
    | otherwise = replaceExtension (takeFileName (toFilePath identifier)) "html"

-- Keep fragments and queries, and leave external source URLs untouched.
markdownLink :: String -> String
markdownLink url
    | ":" `isInfixOf` url || "//" `isPrefixOf` url = url
    | otherwise =
        let (rawPath, suffix) = break (`elem` ['#', '?']) url
            path = if "articles/" `isPrefixOf` rawPath then drop 9 rawPath else rawPath
            path' = if path == "index.md" then "article-index.md" else path
        in if ".md" `isSuffixOf` path'
            then replaceExtension path' "html" ++ suffix
            else url
