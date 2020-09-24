#!/bin/bash

strlen() {
if [[ $# -lt 1 ]]
then
echo "Too few values" > /dev/stderr
return -1
else
echo "$1" | awk '{print length}'
fi
}
