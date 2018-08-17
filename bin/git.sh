#!/bin/bash

if [[ "$CI_PWD" != "" ]]; then
  cd $CI_PWD/fhi-infectious.github.io
  git config user.email "xx@fhi.no"
  git config user.name "FHI Jenkins"

  git commit -a -m "ok"
  git push origin master
else
  echo "hello"
fi

