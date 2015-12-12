name=$1
mv html/${name}.html html/backups/${name}.html
rm tmp/temp.xml
xqilla ${name}.xquery > tmp/temp.xml
xsltproc -output html/${name}.html ${name}.xslt tmp/temp.xml
cat html/${name}.html

