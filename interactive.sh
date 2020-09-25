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
case "$operation" in
A|a|calc) printf "Enter the args"
read -r args
calc "$args";;
B|b|search) printf "Enter the args"
read -r args
search "$args";;
C|c|reverse) printf "Enter two args"
read -r args
reverse "$args";;
D|d|strlen) printf "Enter the args"
read args
strlen "$args";;
E|e|log) log;;
F|f|exit_) printf "Enter the args"
read args
exit_ "$args";;
G|g|help) help;;
H|h|quit) exit;;
*)
echo
echo "Invalid imput format"
esac
echo
read n
done
echo end
}
