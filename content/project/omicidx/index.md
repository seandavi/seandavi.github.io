---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "OmicIDX"
subtitle: "A public genomic metadata index"
summary: "The OmicIDX is an ecosystem that treats omics metadata as data. We collect metadata from omics repositories, process it into computable forms, and make it available for search, analysis, bulk processing, and for integration with additional data resources."
authors: ['seandavi']
tags:
  - omicidx
  - open data
  - genomics
  - api
  - bigquery
categories: []
date: 2020-03-11
featured: true
draft: false


# Optional external URL for project (replaces project detail page).

image:
  caption: Photo by rawpixel on Unsplash
#  focal_point: 

links: 
- icon: home
  icon_pack: fas
  name: Home
  url: http://omicidx.cancerdatasci.org/
- icon: database
  icon_pack: fas
  name: API
  url: https://api.omicidx.cancerdatasci.org/

url_code: "https://github.com/omicidx"
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example


# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

OmicIDX is an ecosystem that _treats metadata_ from public genomics
repositories as _data_. Metadata collection from source repositories
updates occur regularly and processing using a purpose-build [parsing
library](https://github.com/omicidx/omicidx-parsers) produces standard
json format representations. The [OmicIDX
builder](https://github.com/omicidx/omicidx-builder) automates
[Bigquery](https://cloud.google.com/bigquery) and web-based API
generation and updates. The [OpenAPI-based web
API](https://api.omicidx.cancerdatasci.org/) enables performant
language-agnostic search, retrieval, and analysis of OmicIDX
data. Finally, data are augmented with [natural language
processing](https://ii.nlm.nih.gov/MTI/) 
to produce Medical Subject Heading
[MeSH](https://www.nlm.nih.gov/mesh/meshhome.html)  mapping and with
heuristic text matching to map terms to ontologies. 

Datasets currently included in OmicIDX include:

- SRA
   - studies
   - samples
   - experiments
   - runs
- dbGaP mapping from SRA
- Biosample
   - samples
   - projects
- GEO
   - platforms
   - series
   - samples

Data are augmented with:

- MeSH
- ~200 Ontologies
