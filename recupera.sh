#! /bin/bash
if [ ! -d "$HOME/.trash" ]; then
	echo "la carpeta de borrado no existe"
else
	echo "carpeta de borrado encontrada"
	for archivo in "$@"; do
		if [ -e "$HOME/.trash/$archivo" ]; then
			echo "recuperando archivo '$archivo'"
			mv "$HOME/.trash/$archivo" .
		else
			echo "archivo '$archivo' no encontrado"
		fi
	done
fi
