# Write a program to print all prime numbers from 1 to 300 
# (Hint Use loops. breaks and continue )

# Code:

echo "Prime numbers from 1 to 300:"

for (( num=1; num<=300; num++ )); do
  is_prime=true

  for (( divisor=2; divisor<num; divisor++ )); do
    if (( num % divisor == 0 )); then
      is_prime=false
      break
    fi
  done

  if [ "$is_prime" = true ]; then
    echo $num
  fi
done
