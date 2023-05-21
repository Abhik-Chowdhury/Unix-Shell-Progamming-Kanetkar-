count=1
while [ $count -le 3 ]
do
 echo -ne "\nEnter values of principle , Time, Rate of Interest: "
 read p t r
 si=`echo $p \* $t \* $r / 100|bc`
 echo "Simple Interest =Rs.$si"
 count=`expr $count + 1`
 done