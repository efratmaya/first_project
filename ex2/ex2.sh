#!/bin/bash
#ex2
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file> <separator>"
    exit 1
fi

file="$1"
separator="$2"
if ! [ -f $file ]; then
echo "file does not exist"
exit 1
fi
old_ifs=$IFS
# Set the internal field separator (IFS) to the specified separator
IFS="$separator"
#IFS=":"
field_num=1
while read line; do
for field in $line; do
echo "field $field_num : $field"
((field_num++))
done
done < $file
IFS=$old_ifs

