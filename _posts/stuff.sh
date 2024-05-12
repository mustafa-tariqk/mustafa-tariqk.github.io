#!/bin/bash

# Check if a filename is provided as an argument
if [ $# -eq 0 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
	echo "Error: File $filename not found."
	exit 1
fi

# Scan file for instances of ![[...]]
while IFS= read -r line; do
	updated_line=$(echo "$line" | sed 's/!\[\[\([^]]*\)\]\]/![image](assets\/"\1")/g')
	echo "$updated_line"
done <"$filename" >"$filename.tmp"

# Replace original file with updated content
mv "$filename.tmp" "$filename"

echo "File '$filename' updated successfully."
