# Write program to generate all combination of 1,2,3 using for loop

for i in 1 2 3; do
  for j in 1 2 3; do
    for k in 1 2 3; do
      echo "$i $j $k"
    done
  done
done
