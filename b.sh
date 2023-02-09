#!/bin/bash

numeroDeLineas=`cat notas.txt | wc -l`

numeroMatriculas=$(($numeroDeLineas-1))

echo "Hay $numeroMatriculas alumnos matriculados"
