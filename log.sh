#!/bin/bash

log() {
Normal=$(tput sgr0)
Yellow=$(tput setaf 3)
Blue=$(tput setaf 6)
file=/var/log/anaconda/X.log

if [[ -f "$file" ]]
then
grep "\\(II\\)" //var/log/anaconda/X.log | sed -E "s/\\(II\\)/${Yellow}Informatiom:${Normal}/" > all
grep  "\\(WW\\)" //var/log/anaconda/X.log | sed -E "s/\\(WW\\)/${Blue}Warning:${Normal}/" >> all
cat all
else
echo "File doesn't exist" > /dev/stderr
return -3
bash help.sh
fi
}
