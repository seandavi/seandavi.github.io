---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'GEOmetadb: powerful alternative search engine for the Gene Expression Omnibus'
subtitle: ''
summary: ''
authors:
- Y. Zhu
- S. Davis
- R. Stephens
- P. S. Meltzer
- Y. Chen
tags: []
categories: []
date: '2008-12-01'
lastmod: 2021-05-08T11:20:27-06:00
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
publishDate: '2021-05-08T17:20:27.750855Z'
publication_types:
- '2'
abstract: The NCBI Gene Expression Omnibus (GEO) represents the largest public repository
  of microarray data. However, finding data in GEO can be challenging. We have developed
  GEOmetadb in an attempt to make querying the GEO metadata both easier and more powerful.
  All GEO metadata records as well as the relationships between them are parsed and
  stored in a local MySQL database. A powerful, flexible web search interface with
  several convenient utilities provides query capabilities not available via NCBI
  tools. In addition, a Bioconductor package, GEOmetadb that utilizes a SQLite export
  of the entire GEOmetadb database is also available, rendering the entire GEO database
  accessible with full power of SQL-based queries from within R. The web interface
  and SQLite databases available at http://gbnci.abcc.ncifcrf.gov/geo/. The Bioconductor
  package is available via the Bioconductor project. The corresponding MATLAB implementation
  is also available at the same website.
publication: '*Bioinformatics*'
---
