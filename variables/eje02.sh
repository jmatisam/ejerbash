#!/bin/bash

# Capturar la actividad favorita del usuario
echo "Ingrese su actividad favorita:"
read actividad

# Capturar la comida favorita del usuario
echo "Ingrese su comida favorita:"
read comida

# Crear la cadena de texto usando las variables capturadas
mensaje="Mi actividad favorita es $actividad. Mi comida favorita es $comida."

# Imprimir el mensaje final
echo "$mensaje"
