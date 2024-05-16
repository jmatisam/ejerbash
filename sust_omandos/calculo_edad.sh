#!/bin/bash

# Solicita la fecha de nacimiento
echo "Ingresa tu fecha de nacimiento (formato: DD-MM-AAAA:)"
read fecha_nacimiento

# Obtiene el año, mes y día actual
anio_actual=$(date +%Y)
mes_actual=$(date +%m)
dia_actual=$(date +%d)

# Extrae el año, mes y día de la fecha de nacimiento
anio_nacimiento=$(echo "$fecha_nacimiento" | cut -d'-' -f3)
mes_nacimiento=$(echo "$fecha_nacimiento" | cut -d'-' -f2)
dia_nacimiento=$(echo "$fecha_nacimiento" | cut -d'-' -f1)

# Calcula la edad
if [ "$mes_actual" -lt "$mes_nacimiento" ] || ([ "$mes_actual" -eq "$mes_nacimiento" ] && [ "$dia_actual" -lt "$dia_nacimiento" ]); then
    edad=$((anio_actual - anio_nacimiento - 1))
else
    edad=$((anio_actual - anio_nacimiento))
fi

# Muestra la edad
echo "Tu edad es: $edad años."
