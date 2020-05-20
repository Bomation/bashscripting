#!/bin/bash

read -p "Gib die Dateiendung an: " _endung

funcSearch ()  {
	_list=( $( ls . ) )

#	echo ${_list[0]}
#	echo ${_endung}
	
	for ((i=0; i<${#_list[*]}; i++))
	do
		if [ "$(echo ${_list[$i]} | grep ${_endung})" != "" ]; then
#		if [ "${_list[$i]}" != "" ]; then
		
			echo ${_list[$i]}
		
		fi
	done 
}
funcSearch 
