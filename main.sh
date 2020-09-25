#!/bin/bash
source calc.sh
source search.sh
source strlen.sh
source log.sh
source exit_.sh
source help.sh
source reverse.sh
source interactive.sh

case "$1" in
calc) calc "$2" "$3" "$4";;
search) search "$2" "$3";;
reverse) reverse "$2" "$3";;
strlen) strlen "$2";;
log) log;;
exit_) exit_ "$2";;
help) help;;
interactive) interactive;;
*)  echo "invalid imput format" > /dev/stderr
return -7
bash help.sh;;
esac

