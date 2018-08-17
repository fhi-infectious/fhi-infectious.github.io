#!/bin/bash

if [[ "$CI_PWD" != "" ]]; then

  docker run --rm \
  -u="rstudio" \
  -v $CI_PWD/:/git/ \
  raw996/dhadley:3.4.3 ls /git/

else
  echo "hello"
fi

