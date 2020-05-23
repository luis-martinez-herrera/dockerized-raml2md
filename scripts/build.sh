#!/bin/bash

echo "  Raml2md  "
echo "============"

echo "Removing previous build folder"

rm -rf "build/"

echo "Creating build folder"
mkdir "build"

fileNames=$(ls source/)
for fileName in $fileNames
do
  echo "Starting $fileName"

  cleanName=$(echo "$fileName" | cut -d "." -f 1)

  raml2html --theme raml2html-full-markdown-theme -i "source/$cleanName.raml" -o "build/$cleanName.md" --template-dir '/templates'
done

echo "Done"

