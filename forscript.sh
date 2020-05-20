#!/bin/bash

read -p "Gib deine Domains ein: " -a _domain

funcDomain() {
	local i
	for ((i=0; i<${#_domain[*]}; i++)) 
	do
		echo ${_domain[$i]}
	done
}

funcDomain
