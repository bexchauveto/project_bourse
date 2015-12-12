name=$1

mv html/${name}.html html/backups/${name}.html 2> /dev/null
rm tmp/temp.xml 2> /dev/null
rm tmp/temp.xslt 2> /dev/null

# Xquery -> XML
xqilla queries/${name}.xquery > tmp/temp.xml

# Template creation -> create tmp/temp.xslt
python render.py ${name}

# XML
xsltproc -output html/${name}.html tmp/temp.xslt tmp/temp.xml

# Test

if [[ $2 != "noconfirm" ]]
then
    read -p "Cat HTML ? [y/n]" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        cat html/${name}.html 
    fi

    read -p "Ouvrir firefox ? [y/n]" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        firefox html/${name}.html 
    fi
fi
