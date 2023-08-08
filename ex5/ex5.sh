#!/bin/bash
#ex5
rows=$((1 + RANDOM%10))
cols=$((1 + RANDOM%10))

declare -A matrix

generate_random_number(){
  echo $((1 + RANDOM%100))
}

for((i = 0;i < rows;i++)); do
  for((j = 0;j < cols;j++)); do
    matrix[$i,$j]=$(generate_random_number)
  done
done

for((i = 0;i < rows;i++)); do
  for((j = 0;j < cols;j++)); do
    printf "%-5s" "${matrix[$i,$j]}"
  done
  echo
done
