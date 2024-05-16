#!/bin/bash

# Solicitar al usuario que ingrese un número
echo "Ingrese un número para verificar si es divisible por 2:"
read numero

# Verificar si el número ingresado es divisible por 2
if [ $((numero % 2)) -eq 0 ]; then
    echo "$numero es divisible por 2."
else
    echo "$numero no es divisible por 2."
fi
