#!/bin/bash

if [[ "$CI_PWD_OUTSIDE" != "" ]]; then
echo "$CI_PWD_OUTSIDE"
echo 1

  docker run --rm \
  -u="rstudio" \
  -v $CI_PWD_OUTSIDE/:/git/ \
  raw996/dhadley:3.4.3 ls /git/
echo 1

  docker run --rm \
  -u="rstudio" \
  -v $CI_PWD_OUTSIDE/:/git/ \
  raw996/dhadley:3.4.3 Rscript /git/fhi-infectious.github.io/run.R

else
  echo "hello"
fi

