#!/bin/bash
#ex4

declare -A letters

letters["A"]=65
letters["B"]=66
letters["C"]=67
letters["D"]=68
letters["E"]=69
letters["F"]=70
letters["G"]=71
letters["H"]=72
letters["I"]=73
letters["J"]=74
letters["K"]=75
letters["L"]=76
letters["M"]=77
letters["N"]=78
letters["O"]=79
letters["P"]=80
letters["Q"]=81
letters["R"]=82
letters["S"]=83
letters["T"]=84
letters["U"]=85
letters["V"]=86
letters["W"]=87
letters["X"]=88
letters["Y"]=89
letters["Z"]=90



letters["a"]=97
letters["b"]=98
letters["c"]=99
letters["d"]=100
letters["e"]=101
letters["f"]=102
letters["g"]=103
letters["h"]=104
letters["i"]=105
letters["j"]=106
letters["k"]=107
letters["l"]=108
letters["m"]=109
letters["n"]=110
letters["o"]=111
letters["p"]=112
letters["q"]=113
letters["r"]=114
letters["s"]=115
letters["t"]=116
letters["u"]=117
letters["v"]=118
letters["w"]=119
letters["x"]=120
letters["y"]=121
letters["z"]=122


print_decimal_value() {
  local_letter=$1
  local decimal_value=${letters[$letter]}
  echo "$letter = $decimal_value"
}

calculate_sum() {
  local sum=0
  for letter in "$@"; do
    local decimal_value=${letters[$letter]}
    sum=$((sum + decimal_value))
  done
  echo "Sum of decimal values: $sum"
}

if[$# -gt 0]; then
  for arg in "$@"; do
    if[["$arg"!="$0"]]; then
      if[["$arg"==-*]]; then
        letters="${arg:1}"
        calculate_sum $(echo "$letters" | grep -o.)
      else
        print_decimal_value "$arg"
      fi
    fi
  done
else
  echo "Please enter one or more letters (a-z):"
  read -r input
  for letter in $(echo "$input" | grep -o.); do
    print_decimal_value "$letter"
  done
fi
bash: line 1: hello: command not found




