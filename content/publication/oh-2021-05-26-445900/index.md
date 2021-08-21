---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'GenomicSuperSignature: interpretation of RNA-seq experiments through robust,
  efficient comparison to public databases'
subtitle: ''
summary: ''
authors:
- Sehyun Oh
- Ludwig Geistlinger
- Marcel Ramos
- Jaclyn N. Taroni
- Vincent Carey
- Casey Greene
- Levi Waldron
- Sean Davis
tags: []
categories: []
date: '2021-01-01'
lastmod: 2021-08-21T11:12:17-06:00
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
publishDate: '2021-08-21T20:26:17.433993Z'
publication_types:
- '2'
abstract: Millions of transcriptomic profiles have been deposited in public archives,
  yet remain underused for the interpretation of new experiments. We present a novel
  method for interpreting new transcriptomic datasets through near-instantaneous comparison
  to public archives without high-performance computing requirements. We performed
  Principal Component Analysis on 536 studies comprising 44,890 RNA sequencing profiles.
  Sufficiently similar loading vectors were aggregated to form Replicable Axes of
  Variation (RAV). RAVs were annotated with metadata of originating studies and by
  gene set enrichment analysis, forming a knowledge graph. Functionality to associate
  new datasets with RAVs, extract interpretable annotations, and provide intuitive
  visualization are implemented as the GenomicSuperSignature R/Bioconductor package.
  We demonstrated the efficient and coherent database searching, robustness to batch
  effects and heterogeneous training data, and transfer learning capacity of our method
  using TCGA and rare diseases datasets. GenomicSuperSignature will aid analyzing
  new gene expression data in the context of existing databases using minimal computing
  resources.PURPOSE Millions of transcriptomic profiles have been deposited in public
  archives, yet remain underused for the interpretation of new experiments. Existing
  methods for leveraging these public resources have focused on the reanalysis of
  existing data or analysis of new datasets independently. We present a novel approach
  to interpreting new transcriptomic datasets by near-instantaneous comparison to
  public archives without high-performance computing requirements.METHODS To identify
  replicable and interpretable axes of variation in any given gene expression dataset,
  we performed Principal Component Analysis (PCA) on 536 studies comprising 44,890
  RNA sequencing profiles. Sufficiently similar loading vectors, when compared across
  studies, were aggregated to form Replicable Axes of Variation (RAV). RAVs were annotated
  with metadata of originating studies and by gene set enrichment analysis, forming
  a knowledge graph. Functionality to associate new datasets with RAVs, extract interpretable
  annotations, and provide intuitive visualization are implemented as the GenomicSuperSignature
  R/Bioconductor package.RESULTS RAVs are robust to batch effects and the presence
  of low-quality or irrelevant studies, and identify signals that can be lost by merging
  samples across the training datasets. The GenomicSuperSignature package allows instantaneous
  matching of PCA axes in new datasets to pre-computed RAVs, cutting down the analysis
  time from days to the order of seconds on an ordinary laptop. We demonstrate that
  RAVs associated with a phenotype can provide insight into weak or indirectly measured
  biological attributes in a new study by leveraging accumulated data from published
  datasets. Benchmarking against complementary previous works demonstrates that the
  RAV index 1) identifies colorectal carcinoma transcriptome subtypes that are similar
  to but more correlated with clinicopathological characteristics than previous disease-specific
  efforts and 2) can estimate neutrophil counts through transfer learning on new data
  comparably to the previous efforts despite major differences in training datasets
  and model building processes with the additional benefits of flexibility and scalability
  of the model application.CONCLUSION GenomicSuperSignature establishes a knowledge
  graph where different prior knowledge databases are coherently linked, and enables
  researchers to analyze new gene expression data in the context of existing databases
  using minimal computing resources. The robustness of GenomicSuperSignature suggests
  that we can expand this approach beyond human gene expression profiles, such as
  single-cell RNA-seq, microbiome abundance, and different speciestextquoteright transcriptomics
  datasets.Competing Interest StatementThe authors have declared no competing interest.
publication: '*bioRxiv*'
url_pdf: https://www.biorxiv.org/content/early/2021/05/27/2021.05.26.445900
doi: 10.1101/2021.05.26.445900
---
