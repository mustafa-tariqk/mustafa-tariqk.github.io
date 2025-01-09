#!/bin/bash
blogTitle="$*"

date=$(date +%Y-%m-%d)
filename="${date}-$(echo $blogTitle | tr ' ' '-').md"

touch "_posts/$filename"
echo "---" >>"_posts/$filename"
echo "layout: post" >>"_posts/$filename"
echo "title:  \"$blogTitle\"" >>"_posts/$filename"
echo "date:   $date" >>"_posts/$filename"
echo "categories: jekyll update" >>"_posts/$filename"
echo "---" >>"_posts/$filename"

echo "Blog post created: _posts/$filename"