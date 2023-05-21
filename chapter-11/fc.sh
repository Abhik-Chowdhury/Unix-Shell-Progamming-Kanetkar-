# Write a shell script for renaming each file in the directory 
# such that it will have the current shell PID as an extension. 
# The shell script should ensure that the directories do not renamed

# Code:

directory=$1
pid=$$

if [ -d "$directory" ]; then
  cd "$directory"
  for file in *; do
    if [ -f "$file" ]; then
      mv "$file" "$file.$pid"
      echo "Renamed file: $file -> $file.$pid"
    fi
  done
else
  echo "Error: Directory not found!"
fi
