#!/bin/bash

# Loop through the files in the current directory
for file in *; do
  # Check if the file name contains "_"
  if [[ "$file" == *"_"* ]]; then
    # Replace "_" with "-" in the file name
    new_name=`echo "$file" | tr "_" "-"`
    mv "$file" "$new_name"
  fi
done
