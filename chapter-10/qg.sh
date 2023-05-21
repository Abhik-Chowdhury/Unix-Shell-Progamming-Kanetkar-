# A shell script can receive an argument 'one','two',or 'three'. If
# the argument supplied is 'one' display it in bold, if it is 'two'display it in reverse video and if it is 'three' make it blink on the
# screen . If a wrong argument is supplied, report it. Use an elif
# statement.
# Code:

if [ "$1" = one ]
then
# display it in bold,
echo -e "\033[1m $1 "
elif [ "$1" = two ]
then
# display it in reverse video
echo -e "\033[7m $1 "
elif [ "$1" = three ]
then
# make it blink on the screen
echo -e "\033[5m $1 "
elif [ `echo $1|grep "^[a-zA-Z]"` ]
then
echo -e "Wrong input"
fi