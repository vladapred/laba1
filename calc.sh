#!/bin/bash

calc() {
if [ $# -lt 3 ]
then
echo  "Too few values" > /dev/stderr
return -1
else
case "$1" in
"sum") let "result = $2 + $3";;
"sub") let "result = $2 - $3";;
"mul") let "result = $2 * $3";;
"div") if [ "$3" -eq 0 ]
then
echo "Operation with zero isn't possible" > /dev/stderr
return -2
else let "result = $2 / $3"
fi;;
*) echo "Invalid input format" > /dev/stderr
return -7
esac
echo "$result"
fi
}
