# Write a shell script which reports names and sizes of 
# all files in a directory (directory would be supplied
# as an argument to the shell script) whose size is exceeding 
# 1000 bytes. The filename should be printed in descending order 
# of their sizes The total number of such files should also be reported

# Code:

directory=$1

if [ -d "$directory" ]; then
  files=$(find "$directory" -type f -size +1000c -exec ls -lh {} + | awk '{print $5, $9}' | sort -nr)

  echo "Files in $directory exceeding 1000 bytes:"
  echo "$files"

  count=$(echo "$files" | wc -l)
  echo "Total number of files exceeding 1000 bytes: $count"
else
  echo "Error: Directory not found!"
fi
