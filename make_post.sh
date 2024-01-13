#!/bin/bash

# Extract blog title from command line arguments
blogTitle="$*"

# Create filename based on current date and blog title
date=$(date +%Y-%m-%d)
filename="${date}-$(echo $blogTitle | tr ' ' '-').md"

# Create the file and add content
touch "_posts/$filename"
echo "---" >> "_posts/$filename"
echo "layout: post" >> "_posts/$filename"
echo "title:  \"$blogTitle\"" >> "_posts/$filename"
echo "date:   $date" >> "_posts/$filename"
echo "categories: jekyll update" >> "_posts/$filename"
echo "---" >> "_posts/$filename"

echo "Blog post created: _posts/$filename"
