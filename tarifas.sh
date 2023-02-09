#!/bin/bash

read -p "Introduce el numero de llamadas que tienes pensado realizar: " llamadasCliente

limiteDefinitivo=15
limiteSecundario=7

if [ $llamadasCliente -ge $limiteDefinitivo ];then

    importeFijo=100
    echo "Te recomendamos la tarífa 1 en la cual tienes llamadas ilimitadas por $importeFijo €"
elif [ $llamadasCliente -lt $limiteDefinitivo ] && [ $llamadasCliente -ge $limiteSecundario ];then

    importeFijo=50
    importePrecalc=$((($llamadasCliente * 1) + 50))
    echo "Te recomendamos la tarifa 2 en la cual pagarías un importe fijo de $importeFijo euros, y 1 euro por llamada, es decir, has hecho $llamadasCliente llamadas y el importe total de tu factura sería de $importePrecalc €"
else
    importeFijo=20
    importePrecalc=$((($llamadasCliente * 2) + 20))
    echo "Te recomendamos la tarifa 3 en la cual pagarías un importe fijo de $importeFijo euros, y 2 euro por llamada, es decir, has hecho $llamadasCliente llamadas y el importe total de tu factura sería de $importePrecalc €"
fi