#!/bin/bash
#ex3
input=($@)
max_val=10
numeric_words=("one" "two" "three" "four" "five" "six" "seven" "eight" "nine" "ten")
counter=()
for ((i = 0; i < ${max_val} +1; i++)); do
counter[$i]=0
done
for (( i=0; i < ${#input[@]}; i++)); do
num=${input[$i]}
((counter[$num]++))
done
for (( i=0; i < $max_val; i++)); do
#index=$i + 1
if [[ ${counter[$((i+1))]} -ne 0 ]]; then
#echo "${numeric_words[$i]} apears: ${counter[$((i+1))]} times"
echo "${numeric_words[i]} appears: ${counter[$((i+1))]} times"
fi
done



