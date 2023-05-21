# A shell script can receive an argument 'one','two',or
# 'three'. If the argument supplied is 'one' display it in bold, if it
# is 'two' display it in reverse video and if it is 'three' make it
# blink on the If a wrong argument is supplied report it. Use a
# case control instruction.
# Code:

case $1 in
"one") echo -e "\033[1m $1 ";;
"two")echo -e "\033[7m $1 ";;
"three")echo -e "\033[5m $1 ";;
*)echo -e "Wrong input";;
esac