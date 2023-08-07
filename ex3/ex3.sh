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



validation(){
#input=($1)
my_input=($@)
min_value=1
max_value=10
if [[ ${#my_input[@]} -eq 0 ]]; then
echo "you need to enter values"
return 1
fi
for value in ${my_input[@]}; do
if [[ ! "$value" =~ ^[0-9]+$ ]]; then
echo "only numbers are permited"
return 1
fi
done
for value in ${my_input[@]}; do
if [[ ($value -lt $min_value) ||  ($value -gt $max_value) ]]; then
echo "the expected range is 1-10"
return 1
fi
done 
return 0
}

input=($@)
validation $@
if [ $? -eq 1 ]; then
exit 1
fi
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





