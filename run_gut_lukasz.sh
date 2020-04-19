#!/bin/bash

if [ $# == 0 ];
then
  echo 'Podaj argument'
  exit 1
fi

if [ $1 == 'run' ];
then
  echo '================================================';
  echo '==========Budowanie obrazu Dockerowego==========';
  echo '================================================';
  echo

  docker build -t gutlukasz:1.0 .

  echo
  echo '================================================';
  echo '==============Odpalanie środowiska==============';
  echo '================================================';
  echo

  docker run -it gutlukasz:1.0

fi

exit 0