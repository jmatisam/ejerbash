#!/bin/bash

# Obtiene el PID del script actual
pid_actual=$$
echo "PID del script actual: $pid_actual"

# Genera un número aleatorio basado en el PID del script
numero_adivinar=pid_actual
intentos=0
adivinado=false

echo "Adivina el PID del script (número entre $((numero_adivinar / 2)) y $((numero_adivinar * 2))):"

while ! $adivinado; do
    read -p "Ingresa tu intento: " intento
    ((intentos++))

    if [ "$intento" -eq "$pid_actual" ]; then
        echo "¡Felicidades! Adivinaste el PID del script después de $intentos intentos."
        adivinado=true
    elif [ "$intento" -lt "$pid_actual" ]; then
        echo "El PID ingresado es menor, introduce un Nº Mayor. Sigue intentando."
    else
        echo "El PID ingresado es mayor,  introduce un Nº Menor. Sigue intentando."
    fi
done
