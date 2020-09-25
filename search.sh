#!/bin/bash

search() {
if [[ $# -lt 2 ]]
then
echo "Too few values" > /dev/stderr
return -1
bash help.sh
fi

if [[ -d "$1" ]]
then
if [[ -r "$2" ]]
then
ls "$1" | grep "$2"
else
echo "Can't read file" > /dev/stderr
return -5
bash help.sh
fi
else
echo "Directory doesn't exist" > /dev/stderr
return -4
bash help.sh
fi
}
