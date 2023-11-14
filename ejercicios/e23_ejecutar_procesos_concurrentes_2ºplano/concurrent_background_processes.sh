#!/bin/bash
#Ejecuta cinco comandos diferentes en segundo plano utilizando &

comandos(){

	sleep 50



}

#Procesos de ejecucion
comandos & 
pid1=$!
comandos &
pid2=$!
comandos &
pid3=$!
comandos &
pid4=$!
comandos &
pid5=$!

#Muestra el PID de cada proceso en ejecución.
echo "Procesos en segundo plano en ejecución:"
echo "PID   Comando"
echo "$pid1   commando1"
echo "$pid2   commando2"
echo "$pid3   commando3"
echo "$pid4   commando4"
echo "$pid5   commando5"

#Espera a que todos los procesos finalicen.
#wait $pid1 &
#wait $pid2 &
#wait $pid3 &
#wait $pid4 &
#wait $pid5 &

#Utiliza el comando ps para listar y mostrar los procesos en ejecución.
echo "Procesos en ejecución después de la ejecución en segundo plano:"
ps aux | grep -E 'command'

#Pregunta que proceso hay que eliminar

echo "Proceso a finalizar?"

read fin

kill $fin

ps aux | grep -E 'command'




#Utiliza el comando kill para detener un proceso específico en segundo plano con el PID proporcionado por el usuario.
#kill $pid1 $pid2 $pid3 $pid4 

echo "Procesos terminados."


