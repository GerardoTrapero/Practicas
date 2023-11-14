#!/bin/bash

#Ejecuta en segundo plano un proceso usando &

command() {
    gnome-calculator &
}
#Muestra el PID del proceso de ejecucion

command
pid1=$!

#Muestra el PID del proceso de ejecucion 
echo "Procesos en segundo plano en ejecución:"
echo "PID   Comando"
echo "$pid1   command1"


read tecla

kill $pid1

echo "Procesos terminados."


