#!/bin/bash

# Solicita al usuario que ingrese los tres parámetros
read -p "Introduce el primer parámetro: " param1
read -p "Introduce el segundo parámetro: " param2
read -p "Introduce el tercer parámetro: " param3

# Almacena los parámetros en una lista
param_list=("$param1" "$param2" "$param3")


# Imprime el primer y tercer elemento de la lista
echo "Primer y tercer parámetro: ${param_list[0]} y ${param_list[2]}"
