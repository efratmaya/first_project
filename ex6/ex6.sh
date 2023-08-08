#!/bin/bash
#ex6

users=$(cat /etc/passwd)
line=0
c=0
declare -A user_mat

for user in $users; do
   old_ifs= $IFS
   IFS=":"
   column=0
   for field in $user; do
      user_mat[$line,$column]=$field
      ((column++))
      c=$column
    done
    ((line++)) 
    IFS=$old_ifs
done 

for ((i=1; i<=line; i++)) do
    for ((j=1; j<=c; j++)) do
        printf "%s " "${user_mat[$i,$j]}       "
    done
    echo
done           



