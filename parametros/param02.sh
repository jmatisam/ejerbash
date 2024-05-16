#!/bin/bash

nombre_archivo="param01.sh"

# Lee la línea que almacena los parámetros en una lista
linea_parametros=$(grep "param_list=.*" param01.sh)

# Extrae los parámetros de la línea
parametros=$(echo "$linea_parametros" | sed 's/param_list=//')

# Cuenta la cantidad de parámetros
cantidad_parametros=$(echo "$parametros" | wc -w)

# Imprime el número de parámetros
# Imprime la frase completada
echo "En el fichero" $nombre_archivo "existen" $cantidad_parametros "parámetros."

