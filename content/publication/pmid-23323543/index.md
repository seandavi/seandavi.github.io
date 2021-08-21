---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'SRAdb: query and use public next-generation sequencing data from within R'
subtitle: ''
summary: ''
authors:
- Y. Zhu
- R. M. Stephens
- P. S. Meltzer
- S. R. Davis
tags: []
categories: []
date: '2013-01-01'
lastmod: 2021-08-21T11:08:41-06:00
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
publishDate: '2021-08-21T20:26:24.254421Z'
publication_types:
- '2'
abstract: The Sequence Read Archive (SRA) is the largest public repository of sequencing
  data from the next generation of sequencing platforms including Illumina (Genome
  Analyzer, HiSeq, MiSeq, .etc), Roche 454 GS System, Applied Biosystems SOLiD System,
  Helicos Heliscope, PacBio RS, and others. SRAdb is an attempt to make queries of
  the metadata associated with SRA submission, study, sample, experiment and run more
  robust and precise, and make access to sequencing data in the SRA easier. We have
  parsed all the SRA metadata into a SQLite database that is routinely updated and
  can be easily distributed. The SRAdb R/Bioconductor package then utilizes this SQLite
  database for querying and accessing metadata. Full text search functionality makes
  querying metadata very flexible and powerful. Fastq files associated with query
  results can be downloaded easily for local analysis. The package also includes an
  interface from R to a popular genome browser, the Integrated Genomics Viewer. SRAdb
  Bioconductor package provides a convenient and integrated framework to query and
  access SRA metadata quickly and powerfully from within R.
publication: '*BMC Bioinformatics*'
---
