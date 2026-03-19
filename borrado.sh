#! /bin/bash

test -d "$HOME/.trash" ||  mkdir -p "$HOME/.trash"
	for archivo in "$@"; do

		if [ -e "$archivo" ]; then
			echo "borrando archivo '$archivo'"
			mv "$archivo" "$HOME/.trash"
		else
			echo "El archivo '$archivo' no existe"
		fi
	done

