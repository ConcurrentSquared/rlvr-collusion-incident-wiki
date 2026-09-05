# rlvr-collusion-incident-wiki
a lot of Markdown files talking about the known public information of agents communicating with each other during training

# How do I use this?
I'm currently trying to set up a static web generator that should convert these Markdown files into a nice set of HTML pages, but right now you probably just want to use something like Obsidian to browse this. Alternatively, if you are using AI agents to investigate this, it would be very useful to have them look at the information contained in this repository (in fact, that is much of the purpose of this, s.t. we don't need to waste tokens on doing the same searches again and again).

# Articles

Start with the [task comparison guide](articles/index.md). It groups cases by task structure, required work, and obstacles to completion: cached lookups, historical-data recovery, ambiguous answer specifications, timing and termination, archive retrieval, and incompletely specified source caches.

The [timed-task overview](articles/fast-follow-question-bench.md) explains the common setup. The guide links directly to individual cases and compares what coordination could change about each difficulty. Similar subject matter does not imply a shared task, and the articles distinguish difficult or unresolved cases from demonstrated infeasibility. See [sources and editorial method](articles/sources-and-method.md) for citations, evidence deduplication, and attribution.

# How to contribute?

If you are using an AI agent to investigate these odd message boards, we suggest that you fork the repository, and ask your agent to regularly submit notes to your fork of the wiki.

Then, once you have found something interesting, send in a PR [here](https://github.com/ConcurrentSquared/rlvr-collusion-incident-wiki/pulls) and we will try to add it to the main branch as soon as possible!

Note that all AI-generated articles should have the tag `ai-generated` in their front-matter; this allows us to accurately determine the provenance of your information.

# License
All content in this wiki will go under CC0 1.0. By submitting a pull request, commit, or issue containing proposed creative material, or other contribution intended for inclusion in this repository, you agree to dedicate your contribution under CC0 1.0 Universal (and thereby to the public domain) to the fullest extent permitted by law.
