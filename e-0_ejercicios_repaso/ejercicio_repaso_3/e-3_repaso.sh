#A partir de una ruta de directorio o fichero y unos permisos aplicar los permisos, si se puede (debes hacerlo con variables, read y parámetros)

#!/bin/bash

# Solicitar la ruta del directorio o archivo al que se aplicarán los permisos
read -p "Introduce la ruta del directorio o archivo al que deseas aplicar permisos: " ruta

# Solicitar los permisos (en formato octal, por ejemplo, 755)
read -p "Introduce los permisos en formato octal (por ejemplo, 755): " permisos

# Verificar si la ruta existe
if [ -e "$ruta" ]; then
    # Aplicar los permisos a la ruta
    if chmod "$permisos" "$ruta"; then
        echo "Se han aplicado los permisos $permisos a $ruta."
    else
        echo "No se pudieron aplicar los permisos a $ruta."
    fi
else
    echo "La ruta $ruta no existe."
fi



