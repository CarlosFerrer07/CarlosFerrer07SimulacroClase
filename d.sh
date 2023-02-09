#!/bin/bash

nota=$1

if [ $nota -ge 9 ]; then
    echo "tu nota es $nota, has sacado sobresaliente"
    
elif [ $nota -ge 5 ]; then
    echo "tu nota es $nota, has aprobado"
    
else 
    echo "tu nota es $nota, has suspendido"
fi

