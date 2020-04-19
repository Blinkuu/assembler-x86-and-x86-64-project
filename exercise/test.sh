#!/bin/bash

nasm -f elf64 exercise.asm && ld exercise.o

echo '================================================';
echo '================Odpalanie testów================';
echo '================================================';
echo

i=0
while read p; do
  echo "[TEST $i]"

  test_case=${p%:*}
  test_case_result=${p##*:}

  result=$(./a.out <<< "$test_case" | tr -d '\0')
  result=$(echo $result | cut -f2- -d ' ')

  echo "INPUT: $test_case"
  echo "OUTPUT: $result"

  if [[ "$result" != "$test_case_result" ]];
  then
    echo "EXPECTED OUTPUT: $test_case_result"
    echo "[FAILED]"
    exit 1
  fi
  
  echo "[PASSED]"
  echo

  i=$((i + 1))
done < test_cases.txt
