#!/bin/bash

if [[ "$CI_PWD" != "" ]]; then
  cd $CI_PWD/fhi-infectious.github.io
  git config user.email xx@fhi.no
  git config user.name raubreywhite

  git checkout -b master
  git add .
  git commit -m "Jenkins commit"
  git push origin master
else
  echo "hello"
fi

