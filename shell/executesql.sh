#!/bin/bash
if [ -z $1 ] ;
then
	echo "Especifique a base de dados"
	exit 1;
fi

for f in *.sql ;
do
	psql -U postgres -d $1 -a -f $f
done;
