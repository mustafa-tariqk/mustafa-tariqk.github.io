#!/bin/bash

# Input file
input_file="2024-05-11-Friction-Log-VectorShift.md"

# Temp file
temp_file="temp.txt"

# Regular expression to match the pattern
pattern='s/(!\[image\]\(\/assets\/[^"]*")/\1/g'

# Perform the replacement
sed -E "$pattern" "$input_file" >"$temp_file"

# Rename the temp file back to the original file
mv "$temp_file" "$input_file"

echo "Replacement complete."
