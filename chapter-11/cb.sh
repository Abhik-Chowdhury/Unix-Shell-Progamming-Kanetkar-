# write a shell script to find the factorial value of 
# any number entered through the keyboard

# Code:

# Function to calculate factorial
factorial() {
  num=$1
  fact=1

  while ((num > 1)); do
    fact=$((fact * num))
    num=$((num - 1))
  done

  echo $fact
}

# Main program
echo "Enter a number: "
read number

result=$(factorial $number)

echo "Factorial of $number is: $result"
