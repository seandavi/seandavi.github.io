#!/bin/bash
export HUGO_ENV=production
#Rscript -e 'blogdown::build_site(local = FALSE)'
Rscript -e 'blogdown::hugo_build(local = FALSE)'

