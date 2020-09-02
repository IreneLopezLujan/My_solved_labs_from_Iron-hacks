
echo "Hello Word"
mkdir ../new_dir
rm -r ../new_dir
cp ../lorem/sed.txt ../lorem-copy
cp ../lorem/at.txt ../lorem/lorem.txt ../lorem-copy  
cat ../lorem/sed.txt
cat ../lorem/at.txt  ../lorem/lorem.txt ../lorem
head -3 ../lorem-copy/sed.txt
tail -3 ../lorem-copy/sed.txt
echo Homo homini lupus>> ../lorem-copy/sed.txt
tail -3 ../lorem-copy/sed.txt
sed "s/et/ET/g" ../lorem/at.txt > ../lorem-copy/at.txt 
whoami
pwd
ls ../lorem/*.txt
wc -l ../lorem/sed.txt
find ../../ -name "lorem*"     #repetir que mi archivo de comandos esta en la carpeta exercices no en la principal
grep -r -i "et" ../lorem/at.txt


"""
explicacion web:
«-r» indica que se debe realizar de forma recursiva en todos 
los subdirectorios contenidos en la ubicación 
proporcionada. «-i» permite omitir las mayúscula 
y minúsculas, haciendo que la búsqueda sea mucho más
sencilla. «palabra o palabras» es el texto que
 queremos probar. «/home/redeszone» es la ruta sobre 
 la que se realizará la búsqueda.
""" 
 grep -c -r -i "et" ../lorem/at.txt #igual pero -c cuenta
 grep -c -r -i "et" ../lorem-copy/*
grep -c -r -i "et" lorem-copy/*
variable_name=Irene
echo $variable_name
mkdir ../variable_name
rm -r ../variable_name
carpeta_lorem=../lorem


#!/bin/bash
file=../lorem/*
for x in $file;
do
	echo $x;
	
done