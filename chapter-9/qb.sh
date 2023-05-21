# 

# Take the input of distance
echo -n "Enter Distance of Two Cities:"
read distance
if [ $distance -lt 1 ]
then
echo "Wrong input"
break
fi
# Convert the km to m,ft,in
meter=`echo $distance \* 1000|bc`
feet=`echo $distance \* 3280.8|bc`
inchi=`echo $distance \* 39370.1|bc`
centimeter=`echo $distance \* 100000|bc`
echo -e "$distance to meter:$meter m 
\n$distance to feet:$feet ft 
\n$distance to inchi: $inchi in
\n$distance to centimeter:$centimeter cm"