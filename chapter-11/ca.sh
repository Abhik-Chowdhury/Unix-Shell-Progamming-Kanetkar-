# write a program to calculate overtime pay of 10 employee. 
# Overtime is paid at the rate of Rs 12.00 per hour for every 
# hour worked above 40 hours. Assume that employee do not worked 
# for functional part of an hour in shell script

# Constants
RATE_PER_HOUR=12.00
HOURS_THRESHOLD=40

# Function to calculate overtime pay
calculate_overtime_pay() {
  hours_worked=$1
  overtime_pay=0

  if (( hours_worked > HOURS_THRESHOLD )); then
    overtime_hours=$((hours_worked - HOURS_THRESHOLD))
    overtime_pay=$(echo "scale=2; $overtime_hours * $RATE_PER_HOUR" | bc)
  else
     echo "Not eligible for overtime pay for $hours_worked"
  fi

  echo $overtime_payc
}

# Main program
for (( i=1; i<=10; i++ )); do
  echo "Enter the hours worked for employee $i: "
  read hours

  overtime_pay=$(calculate_overtime_pay $hours)
  echo "Overtime pay for employee $i: Rs $overtime_pay"
done
