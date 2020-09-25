#!/bin/bash

strlen() {
if [[ $# -lt 1 ]]
then
echo "Too few values" > /dev/stderr
return -1
bash help.sh
else
str="$1"
echo "${#str}"
fi
}
