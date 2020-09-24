#!/bin/bash

reverse() {
if [[ $# -lt 2 ]]
then
echo "Too few values" > /dev/stderr
return -1
fi

if ! [[ -f "$1" ]]
then
echo "File doesn't exist" > /dev/stderr
return -3
echo "Can't read file" > /dev/stderr
return -5
fi

if [[ -f "$2" ]]
then
if [[ -w "$2" ]]
then
tac "$1" > "$2"
else
echo "Can't write in the file" > /dev/stderr
return -6
fi
else
echo "File doesn't exist"
return -3
fi
}
