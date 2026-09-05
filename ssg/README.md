# Static site generator

A minimal Hakyll site for the Markdown in `../articles`. Run commands from this directory:

```sh
cabal run site -- build
cabal run site -- watch
```

The preview is at <http://localhost:8000>. Publish the contents of `ssg/_site/` with any static file server. Nothing is deployed automatically.

`articles/index.md` becomes the homepage; other articles become sibling `.html` pages. Local Markdown links are converted to HTML links while preserving section anchors and query strings. External source URLs are unchanged. Pandoc renders tables and footnotes. `LICENSE.md` becomes `license.html`. The private notes directory is excluded from the provider.

The site uses semantic HTML and one stylesheet, without JavaScript. White text on black is the default; an explicit light system preference selects black text on white. Charter is used when installed, with local serif fallbacks. No fonts or other assets are fetched from third parties.

After changing the generator, rebuild everything:

```sh
cabal run site -- rebuild
```

GHC and Cabal are required. Cabal installs Hakyll dependencies on the first build if they are not already cached; `hakyll-init` alone scaffolds a project but does not compile it.
