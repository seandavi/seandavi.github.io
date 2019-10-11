#!/bin/bash
export HUGO_ENV=production
Rscript -e 'blogdown::serve_site(port=1313, verbose=TRUE)'
