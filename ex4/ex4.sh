#!/bin/bash
#ex4


print_decimal_value_and_sum() {
  local_letter="$1"
  local decimal_value=$(printf '%d' "'$local_letter")
  echo "$local_letter = $decimal_value"
  sum=$((sum + decimal_value))
}

print_sum() {
  echo "Sum of decimal values: $sum"
}


sum=0
if [ $# -gt 0 ]; then
input=$1
  for((i = 0;i < "${#input}";i++)); do
    print_decimal_value_and_sum "${input:i:1}"
  done
  print_sum $(echo "$input" | grep -o)
else
  echo "Please enter one or more letters (a-z):"
  read -r input
  for((i = 0;i < ${#input};i++)); do
    print_decimal_value_and_sum "${input:i:1}"
  done
print_sum $(echo "$input" | grep -o)
fi
