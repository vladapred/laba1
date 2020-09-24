#!/bin/bash

source calc.sh
source search.sh
source reverse.sh
source help.sh
source exit_.sh
source log.sh
source strlen.sh

function Menu {
clear
echo "MENU"
echo "A) Calc"
echo "B) Search"
echo "C) Reverse"
echo "D) Strlen"
echo "E) Log"
echo "F) Exit"
echo "G) Help"
echo "H) Quit"
}

interactive() {
while [ $? -ne 1 ]
do
Menu
printf "Enter the operation "
read -r operation
printf "Enter the args "
read -r args
echo $args
case "$operation" in
A|a|calc) calc "$args";;
B|b|search) search "$args";;
C|c|reverse) reverse "$args";;
D|d|strlen) strlen "$args";;
E|e|log) log "$args";;
F|f|exit_) exit_ "$args";;
G|g|help) help "$args";;
H|h|quit) exit;;
*)
echo "Invalid imput format"
esac
echo
read n
done
echo end
}
