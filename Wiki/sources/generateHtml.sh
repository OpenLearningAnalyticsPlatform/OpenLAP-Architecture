#! /bin/bash
# This takes the md in this folder and compiles into html using the
# npm markdown-html module
rm -r ../html
mkdir ../html
for i in *.md; do
    filename=$(basename "$i")
    extension="${filename##*.}"
    filename="${filename%.*}"
    markdown-html ${i} -o ../html/${filename}.html
done
