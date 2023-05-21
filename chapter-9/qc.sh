# The length and breadth of a rectangle and radius of a circle are
# input through the keyboard. Write a program to calculate the
# area and perimeter of the rectangle, and area and
# circumference of the circle
# Code:
# Take the input of length,breadth,radius
echo -n "Enter length,breath,radius:"
read length breadth radius
pi=3.14
echo $length $breadth $radius
areaRec=`echo $length \* $breath|bc`
parimeterRec=`echo $length \* 2 + $breath \* 2|bc`
areaCir=`echo $pi \* $radius \* $radius|bc`
circumferenceCir=`echo 2 \* $pi \* $radius |bc`
echo -e "Area of rectangle:$areaRec \nperimeter of
rectangle:$parimeterRec \nArea
of Circle:$areaCir \nCircumference of Circle:$circumferenceCir"