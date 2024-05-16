#!/bin/bash

# Obtener el nombre del usuario actual
usuario_actual=$(whoami)

# Verificar si el usuario actual no es root
if [ "$usuario_actual" != "root" ]; then
    echo "No tiene acceso como root."
else
    echo "Acceso permitido como root."
fi
