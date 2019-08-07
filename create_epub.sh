#!/bin/sh

echo "clean: "
rm test_epub.epub

echo " "
echo "create: "
cd test_epub/
zip -X0 ../test_epub.epub mimetype
zip -r9 ../test_epub.epub * -x mimetype -x .*
cd ..

echo " "
echo "list: "
unzip -l test_epub.epub

echo " "
echo "check: "
epubcheck test_epub.epub

echo " "
echo "hex: "
xxd test_epub.epub | head -n 10
