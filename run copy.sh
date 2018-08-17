#!/bin/bash

if [[ "$CI_PWD" != "" ]]; then

  docker run --rm \
  -u="rstudio" \
  -v $CI_PWD/:/git/ \
  raw996/dhadley:3.4.3 ls /git/

  docker run --rm \
  -u="rstudio" \
  -v $CI_PWD/:/git/ \
  raw996/dhadley:3.4.3 Rscript /git/fhi-infectious.github.io/run.R
else
  echo "hello"
fi

