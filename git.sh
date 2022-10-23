#!/bin/bash

cd repositorioA
# Comprobamos si el directorio en el que estamos es de un repositorio git
if [  -d '.git' ]; then
	git pull
	else
	echo "esto no es un repositorio"
fi
cd ..
cd repositorioB
if [  -d '.git' ]; then
	git pull
	else
	echo "esto no es un repositorio"
fi
cd .. 
cd repositorioC
if [  -d '.git' ]; then
	git pull
	else
	echo "esto no es un repositorio"
fi
