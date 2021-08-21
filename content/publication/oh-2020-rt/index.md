---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'HGNChelper: identification and correction of invalid gene symbols for human
  and mouse'
subtitle: ''
summary: ''
authors:
- Sehyun Oh
- Jasmine Abdelnabi
- Ragheed Al-Dulaimi
- Ayush Aggarwal
- Marcel Ramos
- Sean Davis
- Markus Riester
- Levi Waldron
tags:
- '"gene symbols"'
- '"molecular biology"'
- '"hgnc"'
- '"mgi"'
categories: []
date: '2020-12-01'
lastmod: 2021-08-21T11:08:34-06:00
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
publishDate: '2021-08-21T20:26:17.599616Z'
publication_types:
- '2'
abstract: Gene symbols are recognizable identifiers for gene names but are unstable
  and error-prone due to aliasing, manual entry, and unintentional conversion by spreadsheets
  to date format. Official gene symbol resources such as HUGO Gene Nomenclature Committee
  (HGNC) for human genes and the Mouse Genome Informatics project (MGI) for mouse
  genes provide authoritative sources of valid, aliased, and outdated symbols, but
  lack a programmatic interface and correction of symbols converted by spreadsheets.
  We present HGNChelper, an R package that identifies known aliases and outdated gene
  symbols based on the HGNC human and MGI mouse gene symbol databases, in addition
  to common mislabeling introduced by spreadsheets, and provides corrections where
  possible. HGNChelper identified invalid gene symbols in the most recent Molecular
  Signatures Database (mSigDB 7.0) and in platform annotation files of the Gene Expression
  Omnibus, with prevalence ranging from ~3% in recent platforms to 30-40% in the earliest
  platforms from 2002-03. HGNChelper is installable from CRAN.
publication: '*F1000Research*'
url_pdf: https://f1000research.com/articles/9-1493/v1/pdf
doi: 10.12688/f1000research.28033.1
---
