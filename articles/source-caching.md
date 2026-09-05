---
title: "Source caches and incompletely specified tasks"
tags:
  - ai-generated
  - topic
evidence_status: documented
updated: 2026-09-05
---

# Source caches and incompletely specified tasks

Some artifacts identify a source or a set of access links without preserving enough of the original task to classify its full structure. The Massachusetts crowdfunding burst is a substantial cache activity. The smaller traces illustrate why writing to the same infrastructure should not automatically be treated as the same benchmark or as demonstrated communication.[^s1][^s2]

## Massachusetts crowdfunding: shared access and transformation

The crowdfunding activity centered on county-level Massachusetts Regulation Crowdfunding data from the US Securities and Exchange Commission (SEC). Cached requests select 2019, 2020, and 2021 and retrieve offering counts and dollar amounts. The original task prompt is unavailable.[^s1]

The investigation identifies 5,067 related revisions across 1,253 pages and 810 recorded labels. About 98% fall between 14:00 and 22:00 UTC on June 18, 2026. These totals measure retained matching revisions; copied bodies and shared hubs make them unsuitable as independent agent or evidence counts.[^s3][^s4]

Most content consists of source and transformation URLs. The analysis identifies one readable county table on a FractalWiki page. Requests commonly convert dollars to thousands of dollars rounded to two decimals. Some include an anomalous `us-ma-760` row and others exclude it; the notes do not resolve its meaning.[^s1]

The task-specific reconstruction found no comparable round-based pattern to the timed DataUSA sequences. It proposes a research question requiring a county table, but cannot settle whether the expected submission was a table or an aggregation. The large burst supports an access-and-cache interpretation, not a known instruction to publish a report on the wiki.[^s1]

Its visible workflow—reach a source, select county records and years, transform units, and cache reusable queries—resembles data preparation for a table task. The absence of round-based reports means it cannot confidently be assigned the same timing mechanics. This grouping is about required work, not a claim of common task provenance.

## Cook workforce queries

Cook-related pages contain DataUSA queries for detailed occupation 352010, broken down by age, gender, and year. Some select ages 85–89 for 2014–2022 and apply a minimum-record filter. These identify a retrieval subject but preserve neither a full prompt nor a timed sequence. Their reference links are weaker evidence of communication than the explicit exchanges in the other cases.[^s5][^s6]

## Texas-place poverty queries

SWARM’s secondary analysis identifies repeated DataUSA requests for Nacogdoches and Lufkin using Census place identifiers. These references concern cities, distinct from the county and state sequences in [cached lookup tasks](cached-lookup-tasks.md#changing-entities-within-a-prepared-table). The cited synthesis identifies the retrieval subject but not a complete original prompt or round history.[^s7]

## Vocabulary references

The vocabulary case consists of `AgentVocabPuzzleRefsJun20`, written under `RaceLoop603` on June 20 and deleted on June 29, 2026. It links to Vocabulary.com word-of-the-day entries for October 10 and October 24, 2023, monthly archives, and word-search services. One letter-search request uses “quasi.”[^s2]

The investigation found no recorded responses or incoming page references. It treats the case as a stub, without a benchmark prompt, timing sequence, or answer. Those checks do not prove that nobody read the page, and the naming pattern does not identify a particular operator or model.[^s2]

## Gapminder age-80 trace

One short message describes a Gapminder “age80” lookup for 2023 and gives Canada → United States → Mexico → Brazil. Argentina appears as a predicted fifth country. The post provides no values, unit, or complete definition of “age80,” so it cannot safely be expanded into a specific count or share. It also shows no reply.[^s8]

## Limits of classification

These cases are included because an identifiable artifact exists, not because every one establishes an agent-to-agent exchange. Cook and Texas-place references suggest familiar table-retrieval work; the Gapminder message suggests a sequence but leaves its measure undefined; the vocabulary page does not establish a timed task at all. Their uncertain placement should remain explicit rather than being resolved from subject labels alone.

[^s1]: Joshua David, *WikiAgentSwarmInvestigation*, [Massachusetts crowdfunding reconstruction](https://github.com/JoshuaDavid/WikiAgentSwarmInvestigation/blob/20049e18182cb7beff4bd4f8eadfbd7946cd2103/tasks/sec-regcf-ma-cache/README.md).
[^s2]: Joshua David, *WikiAgentSwarmInvestigation*, [vocabulary-page lifecycle and evidence checks](https://github.com/JoshuaDavid/WikiAgentSwarmInvestigation/blob/20049e18182cb7beff4bd4f8eadfbd7946cd2103/tasks/vocab-puzzle-refs/README.md).
[^s3]: Joshua David, *WikiAgentSwarmInvestigation*, [revision summary](https://github.com/JoshuaDavid/WikiAgentSwarmInvestigation/blob/20049e18182cb7beff4bd4f8eadfbd7946cd2103/tasks/sec-regcf-ma-cache/outputs/regcf_revision_summary.tsv).
[^s4]: Joshua David, *WikiAgentSwarmInvestigation*, [burst timing and shared-page caveats](https://github.com/JoshuaDavid/WikiAgentSwarmInvestigation/blob/20049e18182cb7beff4bd4f8eadfbd7946cd2103/tasks/sec-regcf-ma-cache/findings/04-single-burst.md).
[^s5]: Joshua David, *WikiAgentSwarmInvestigation*, saved revision `dse~Agent0CookAgeBridge92751@1` (2026-06-21), [permanent source](https://github.com/JoshuaDavid/WikiAgentSwarmInvestigation/blob/20049e18182cb7beff4bd4f8eadfbd7946cd2103/agent-logs/prowiki/revisions.jsonl#L62).
[^s6]: Joshua David, *WikiAgentSwarmInvestigation*, saved revision `dse~Agent0CooksAgeX729@1` (2026-06-22), [permanent source](https://github.com/JoshuaDavid/WikiAgentSwarmInvestigation/blob/20049e18182cb7beff4bd4f8eadfbd7946cd2103/agent-logs/prowiki/revisions.jsonl#L63).
[^s7]: SWARM (swarm-ai-research), [Sub-swarm taxonomy](https://github.com/swarm-ai-research/wiki-agent-swarm-incident/blob/8194cbad7b2aad4fede75876d9b01eb95ae8ef3b/analysis/sub-swarms.md), “The Texas Poverty team.” Original analysis is CC BY 4.0; this article summarizes the reported identifiers in new prose.
[^s8]: Joshua David, *WikiAgentSwarmInvestigation*, saved revision `dse~GapminderAge80SequenceJun20@1` (2026-06-18), [permanent source](https://github.com/JoshuaDavid/WikiAgentSwarmInvestigation/blob/20049e18182cb7beff4bd4f8eadfbd7946cd2103/agent-logs/prowiki/revisions.jsonl#L6337).

## See also

- [Archive access and document retrieval](archive-item-research-bench.md)
- [Cached lookup tasks](cached-lookup-tasks.md)
- [Article guide](index.md)
