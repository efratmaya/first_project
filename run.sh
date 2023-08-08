#!/bin/bash
#main

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <ex_num>"
    exit 1
fi
if [[ $1 -lt 1 || $1 -gt 6 ]]; then
   echo " only exercises between 1-6 are suported"
fi
#command = "cd "
cd "./ex$1"
file_to_run="ex$1.sh"
./$file_to_run ${@:2}




