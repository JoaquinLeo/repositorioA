#!/bin/bash

echo "Hola a todos!"

sleep 2
# declaracion de una variable
Script="Scripting en Linux"
echo "Bienvenid@ al  ${Script}"

sleep 2
read -p "como te llamas? --> " nombre
echo "Hola ${nombre}"

sleep 2
echo -n "${nombre} estas en la ruta: "
pwd #ruta

sleep 2
echo -n "Eres el usuario: "
whoami #usuario

# estructura condicional 

# -eq -ne -gt -ge -lt -le
#  =   !   >   >=  <   <=

sleep 5
numero1=5
numero2=10
echo -e "\n\n--- Condicional if ---"

if [ $numero1 -eq $numero2 ]
then
	echo "${numero1} y ${numero2} son iguales"
else
	echo "${numero1} y ${numero2} no son iguales"
fi

# bucle for
sleep 5
echo -e "\n\n--- Bucle for ---"
for ((i=1; i<10; i++))
do
	echo "ciclo: $i"
done

sleep 5
# bucle while
echo -e "\n\n--- Bucle While ---"
edad=""

while [ "$edad" == "" ]
do
	read -p "introduzca su edad: " edad
done

echo "La edad introducida fue: $edad"

