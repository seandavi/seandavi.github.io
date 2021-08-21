---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'RCircos: an R package for Circos 2D track plots'
subtitle: ''
summary: ''
authors:
- H. Zhang
- P. Meltzer
- S. Davis
tags: []
categories: []
date: '2013-01-01'
lastmod: 2021-08-21T11:08:40-06:00
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
publishDate: '2021-08-21T20:26:23.626482Z'
publication_types:
- '2'
abstract: Circos is a Perl language based software package for visualizing similarities
  and differences of genome structure and positional relationships between genomic
  intervals. Running Circos requires extra data processing procedures to prepare plot
  data files and configure files from datasets, which limits its capability of integrating
  directly with other software tools such as R. Recently published R Bioconductor
  package ggbio provides a function to display genomic data in circular layout based
  on multiple other packages, which increases its complexity of usage and decreased
  the flexibility in integrating with other R pipelines. We implemented an R package,
  RCircos, using only R packages that come with R base installation. The package supports
  Circos 2D data track plots such as scatter, line, histogram, heatmap, tile, connectors,
  links, and text labels. Each plot is implemented with a specific function and input
  data for all functions are data frames which can be objects read from text files
  or generated with other R pipelines. RCircos package provides a simple and flexible
  way to make Circos 2D track plots with R and could be easily integrated into other
  R data processing and graphic manipulation pipelines for presenting large-scale
  multi-sample genomic research data. It can also serve as a base tool to generate
  complex Circos images.
publication: '*BMC Bioinformatics*'
---
