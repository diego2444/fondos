#!/bin/bash

#rutas de las imagenes
madrugada="$HOME/fondos/madrugada.jpeg"
manyana="$HOME/fondos/manyana.jpeg"
dia="$HOME/fondos/dia.jpeg"
tarde="$HOME/fondos/tarde.jpeg"
noche="$HOME/fondos/noche.jpeg"

while true; do
	#esto es para mostrar la hora en numeros enteros (sin el 0 a la izq)
	hora=$(date +%k)

	if [[ $hora -ge 6 && $hora -lt 10 ]]; then
		#cambio de ruta cuando la hora es mayor o igual a 6 pero menor que 10, o sea,
		#desde las 6:00 a las 10:00 (mañana)
		imagen_uri="'file://$manyana'"
	elif [[ $hora -ge 10 && $hora -lt 15 ]]; then
		#desde las 10:00 a las 15:00 (dia)
		imagen_uri="'file://$dia'"
	elif [[ $hora -ge 15 && $hora -lt 20 ]]; then
		#desde las 15:00 hasta las 20:00 (tarde)
		imagen_uri="'file://$tarde'"
	elif [[ $hora -ge 20 || $hora -lt 3 ]]; then
		#desde las 20:00 hasta las 3:00 (noche)
		imagen_uri="'file://$noche'"
	else
		#de las 3:00 en adelante (hasta las 6:00) (madrugada)
		imagen_uri="'file://$madrugada'"
	fi
	
	#establecer el fondo de pantalla
	dconf write /org/gnome/desktop/background/picture-uri "$imagen_uri"
	
	#espera 1h antes de volverse a ejecutar
	sleep 3600
done