#!/bin/bash

cuantosAprobados=0
cuantosSuspensos=-1

while read linea; do
    notas=$(echo $linea | awk {'print $3'})
    if [ $notas -ge 5 ];then
        ((cuantosAprobados++))
    else 
        ((cuantosSuspensos++))
    fi 
done < notas.txt

echo "Han aprobado $cuantosAprobados y han suspendido $cuantosSuspensos"

