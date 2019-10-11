#!/bin/bash
export HUGO_ENV=production
Rscript -e 'blogdown::hugo_build()'

