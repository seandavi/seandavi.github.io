---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Toward a gold standard for benchmarking gene set enrichment analysis
subtitle: ''
summary: ''
authors:
- Ludwig Geistlinger
- Gergely Csaba
- Mara Santarelli
- Marcel Ramos
- Lucas Schiffer
- Nitesh Turaga
- Charity Law
- Sean Davis
- Vincent Carey
- Martin Morgan
- Ralf Zimmer
- Levi Waldron
tags: []
categories: []
date: '2020-03-01'
lastmod: 2021-08-21T13:52:37-06:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
publishDate: '2021-08-21T20:26:17.177466Z'
publication_types:
- '2'
abstract: Although gene set enrichment analysis has become an integral part of high-throughput
  gene expression data analysis, the assessment of enrichment methods remains rudimentary
  and ad hoc. In the absence of suitable gold standards, evaluations are commonly
  restricted to selected datasets and biological reasoning on the relevance of resulting
  enriched gene sets.We develop an extensible framework for reproducible benchmarking
  of enrichment methods based on defined criteria for applicability, gene set prioritization
  and detection of relevant processes. This framework incorporates a curated compendium
  of 75 expression datasets investigating 42 human diseases. The compendium features
  microarray and RNA-seq measurements, and each dataset is associated with a precompiled
  GO/KEGG relevance ranking for the corresponding disease under investigation. We
  perform a comprehensive assessment of 10 major enrichment methods, identifying significant
  differences in runtime and applicability to RNA-seq data, fraction of enriched gene
  sets depending on the null hypothesis tested and recovery of the predefined relevance
  rankings. We make practical recommendations on how methods originally developed
  for microarray data can efficiently be applied to RNA-seq data, how to interpret
  results depending on the type of gene set test conducted and which methods are best
  suited to effectively prioritize gene sets with high phenotype relevance.http://bioconductor.org/packages/GSEABenchmarkeRludwig.geistlinger@sph.cuny.edu
publication: '*Briefings in Bioinformatics*'
url_pdf: https://doi.org/10.1093/bib/bbz158
doi: 10.1093/bib/bbz158
---
