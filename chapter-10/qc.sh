# Write a shell script which receives any year from the keyboard
# and determines whether the year is a leap year or not. If no
# argument is supplied the current year should be assumed.
# Code:

echo -n "Enter Year:"
read year
if [ -z $year ]
then
year=`date +%Y`
if [ `expr $year % 4` -eq 0 ]
then
echo "$year is leap year"
else
echo "$year is not leap year"
fi
else
if [ `expr $year % 4` -eq 0 ]
then
echo "$year is leap year"
else
echo "$year is not leap year"
fi
fi