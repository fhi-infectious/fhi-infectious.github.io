#!/bin/bash

if [[ "$CI_PWD_OUTSIDE" != "" ]]; then
  docker run --rm \
  -u="rstudio" \
  -v $CI_PWD_OUTSIDE/:/git/ \
  raw996/dhadley:3.4.3 Rscript /git/fhi-infectious.github.io/run.R

  git config --global user.email "xx@fhi.no"
  git config //global user.name "FHI Jenkins"
else
  echo "hello"
fi

