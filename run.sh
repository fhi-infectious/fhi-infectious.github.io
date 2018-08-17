#!/bin/bash

if [[ "$CI_PWD" != "" ]]; then
echo 1
  docker run --rm \
  -u="rstudio" \
  -v $CI_PWD/:/git/ \
  raw996/dhadley:3.4.3 ls /git/
echo 1
else
  echo "hello"
fi

