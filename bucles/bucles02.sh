#!/bin/bash

# Agrega un archivo
read -p "Ingresa el nombre del archivo que deseas agregar: " nombre_archivo
touch "$nombre_archivo"
echo "Archivo \"$nombre_archivo\" creado."

# Espera 3 segundos
sleep 3

# Muestra la lista de archivos
echo "Archivos actuales:"
ls

# Pregunta si deseas borrar un archivo
read -p "¿Deseas borrar un archivo? (s/n): " opcion

if [[ "$opcion" == "s" ]]; then
    read -p "Ingresa el nombre del archivo a borrar: " archivo_a_borrar
    if [[ -f "$archivo_a_borrar" ]]; then
        #ESta linea no la ejecuto para no borrar nada rm "$archivo_a_borrar"
        echo "Archivo \"$archivo_a_borrar\" borrado."
    else
        echo "El archivo \"$archivo_a_borrar\" no existe."
    fi
else
    echo "Ok, no borraremos ningún archivo."
fi
