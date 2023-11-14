#!/bin/bash

# Diseñar un script que realice lo siguiente:

#    Utilza el comando sudo para instalar un programa de tu elección utilizando apt-get. Por ejemplo, puedes instalar "tree" con sudo apt-get install tree.
#    Luego, espera la entrada del usuario para continuar, indícale que ya se ha instalado y que como es una pruba debe pulsar enter para desinstalar.
#    Una vez que el usuario presiona Enter, utiliza sudo apt-get remove para desinstalar el programa.
#----------------------------------------------------------------------------------------------------------------------------------------------------------

#!/bin/bash

# Instala un programa de elección con sudo apt-get install
programa="tree"
echo "Instalando $programa con sudo apt-get install..."
sudo apt-get install -y $programa

# Espera la entrada del usuario para continuar
read -p "Presiona Enter para continuar y desinstalar $programa..."

# Indica que el programa ha sido instalado y que es una prueba
echo "$programa ha sido instalado. Presiona Enter para desinstalar."

# Espera la entrada del usuario para desinstalar el programa
read -p "Presiona Enter para desinstalar $programa..."

# Utiliza sudo apt-get remove para desinstalar el programa
sudo apt-get remove -y $programa

echo "$programa ha sido desinstalado."
