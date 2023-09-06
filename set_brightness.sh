#!/bin/bash

function set_brightness { 
	arg1=$1
	if [[ $arg1 = "up" ]]; then
		light -A 5


	elif [[ $arg1 = "down" ]]; then
		light -U 5
	fi
	"/home/alzhar/.scripts/dwm/update_brightness.sh"
}

set_brightness $1
