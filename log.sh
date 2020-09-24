#!/bin/bash

log() {
Normal=$(tput sgr0)
Yellow=$(tput setaf 3)
Blue=$(tput setaf 6)
file=/var/log/anaconda/X.log

if [[ -f "$file" ]]
then
grep -E -h -s "\\(II\\)" //var/log/anaconda/X.log | sed -E "s/\\(II\\)/${Yellow}Warning:${Normal}/" > text.txt
grep -E -h -s "\\(WW\\)" //var/log/anaconda/X.log | sed -E "s/\\(WW\\)/${Blue}Information:${Normal}/" >> text.txt
rm text.txt
else
echo "File doesn't exist" > /dev/stderr
return -3
fi
}
