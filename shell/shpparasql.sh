#!/bin/bash
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] ;
then
	echo "Erro. Adicione os seguintes parâmetros, respectivamente (sem colchetes): [ esquema ] [ tablespace de índice ] [ tablespace de tabelas ]"
	exit 1;
fi

mkdir ./sql/

for f in *.shp ;
do

	shp2pgsql -I -s 4326 -W "latin1" "$f" "$1.${f%.shp}" "$f" | tr -d '"'  > ./sql/"${f%.shp}.sql" ;
	t="${f%.shp}";
	t=${t,,};	
	echo "
CREATE INDEX "$t"_gid_btree ON $1."$t" (gid);
ALTER INDEX $1."$t"_gid_btree SET TABLESPACE $2;
ALTER INDEX $1."$t"_geom_gist SET TABLESPACE $2;
ALTER TABLE $1."$t" SET TABLESPACE $3;" >> ./sql/indices_tablespaces.sql
done;
