#!/bin/bash

#################################################################################
################### FREE - Skeleton Version 0.4 - under GPLv3 ###################
################### by Mathias Gut, Netchange Informatik GmbH ###################
################### From the freecybersecurity.org Project    ###################
################### Thanks to the community for the ideas     ###################
################### integrated into this skeleton.            ###################
#################################################################################

##########################################################
#  INFORMATIONS                                          #
#  BABA Blacklist Check Skript                           #
#  Gruppe 2						 #
#  Von: Mirsad, Luca1*, Monica, Johnny			 #
##########################################################

#######################
### Preparing tasks ###
#######################

#Check root rights (sudo) before execution.
if [ $(id -u) -ne 0 ]; then
	echo "You need root rights (sudo)."
	exit
fi

#Check if a program is installed.
funcCheckProg() {
	local _program
	local _count
	local _i

	_program=(python3 vi emacs)
	for _i in "${_program[@]}"; do
		if [ -z $(command -v ${_i}) ]; then
			echo "${_i} is not installed."
			_count=1
		fi
	done

	if [[ ${_count} -eq 1 ]]; then
		exit
	fi
}

#Read current date and time in hours and minutes into variable.
_TIME=$(date +%d.%m.%Y-%H:%M)

############################
### Integrated functions ###
############################

#. libraries/


###############################
### EXAMPLE TOOL USAGE TEXT ###
###############################

funcHelp() {
	echo "From the Free OCSAF project"
	echo "Free OCSAF SKELETON 0.4 - GPLv3 (https://freecybersecurity.org)"
	echo "Use only with legal authorization and at your own risk!"
	echo "ANY LIABILITY WILL BE REJECTED!"
	echo ""
	echo "USAGE:"
	echo "  ./blacklistcheck.sh <Domain>"
	echo ""
	echo "EXAMPLE:"
	echo "  ./blacklistcheck.sh freecybersecurity.org"
	echo ""
	echo "OPTIONS:"
	echo "  -h, help"
	echo "  -c, no color scheme set"
	echo ""
	echo "NOTES:"
	echo "#See also the MAN PAGE - https://freecybersecurity.org"
}


###############################
### GETOPTS - TOOL OPTIONS  ###
###############################

while getopts "d:l:hc" opt; do
	case ${opt} in
        h) funcHelp; exit 1;;
	c) _COLORS=1;;
	\?) echo "**Unknown option**" >&2; echo ""; funcHelp; exit 1;;
	*) funcHelp; exit 1;;
  	esac
	done
    	shift $(( OPTIND - 1 ))

###############
### COLORS  ###
###############

#Colors directly in the script.
if [[ ${_COLORS} -eq 1 ]]; then
	cOFF=''
	rON=''
	gON=''
	yON=''
else
	cOFF='\e[39m'	  #color OFF / Default color
	rON='\e[31m'	  #red color ON
	gON='\e[32m'	  #green color ON
	yON='\e[33m'	  #yellow color ON
fi

############
### MAIN ###
############

echo ""
echo "##########################################"
echo "####  FREE OCSAF BASH SKELETON GPLv3  ####"
echo "####  https://freecybersecurity.org   ####"
echo "##########################################"
echo ""

listb="
    dnsbl.httpbl.org
    cbl.abuseat.org
    dnsbl.sorbs.net
    bl.spamcop.net
    zen.spamhaus.org
    combined.njabl.org
"

BLIST=($(echo ${listb} | tr " " "\n"))

read -p "Enter your Domain: " _domain

FuncMX () {

         #echo ${_domain}       
    
        local _mx=$(dig +noall +answer -t a ${_domain} | rev | cut -f1 -d$'\t' | rev)
    
        echo ${_mx}

        my_array=($(echo ${_mx} | tr " " "\n"))

        for ((i=0; i<${#my_array[*]}; i++))
        do  
                #echo ${my_array[$i]}

                for ((x=0; x<${#BLIST[*]}; x++)) 
                do    
                        #echo ${BLIST[$x]}              
                        listed="$(dig +short -t a ${my_array[$i]}.${BLIST[$x]})"
    
                        if [ -z "$listed" ]; then
                                #echo ${listed}
                                echo -e "${gON}[OK]${cOFF}${my_array[$i]} hat bei ${BLIST[$x]} keinen Eintrag"
                        else 
                                 #echo ${listed}
                                echo -e "${rON}[WARN]${cOFF}${my_array[$i]} hat einen Eintrag bei ${BLIST[$x]}"
                        fi  

                done
                echo ""
        done
}

FuncMX

################### END ###################

