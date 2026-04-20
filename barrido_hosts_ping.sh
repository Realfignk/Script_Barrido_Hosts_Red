#!/bin/env bash

help() {
    echo "$(basename "$0") direccion_red"
    echo "El script hace un barrido de las direcciones ip de una red para ver que hosts estan activos en red (existen.)"
    echo "Por defecto solo hace ping a redes /24."
    echo "Parámetros:"
    echo "    direccion_red: direccion de red a la cual hacer ping."
}

dir_red="$1"
red=${dir_red%.*}

cont=1
while true; do
    ip_dir="$red.$cont"
    if test "$cont" == "255"; then
	exit 0
    fi
    if ping -w 1 -c 1 "$ip_dir" &> /dev/null; then
       echo "Activo: $ip_dir"
    fi
    (( cont++ ))
done
