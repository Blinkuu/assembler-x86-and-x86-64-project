#!/bin/bash

if [ $# == 0 ];
then
  echo 'Podaj argument'
  exit 1
fi

if [ $1 == 'clone' ]
then

  echo '================================================';
  echo '=============Klonowanie repozytorium============';
  echo '================================================';
  echo

  git clone https://github.com/Blinkuu/assembler-x86-and-x86-64-project

elif [ $1 == 'run' ]
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

elif [ $1 == 'clean' ]
then
  echo
  echo '================================================';
  echo '==========Usuwanie pobranej zawartości==========';
  echo '================================================';
  echo

  if [[ ! -d "assembler-x86-and-x86-64-project" ]]
  then
      cd .. 
  fi
  
  rm -rf assembler-x86-and-x86-64-project
fi

exit 0