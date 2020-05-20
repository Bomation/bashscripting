#!/bin/bash

#SNI is an optional field which can be used to establish a connection between the server and the desired website when establishing a connection via TLS during the client hello. TLS 1.3 and ESNI must be used to better protect the connections against monitoring. In addition, DNS traffic must be secured using DNSoverTLS or DNSoverHTTPS.

#This bash script helps to find out if the traffic can be tracked via DNS or SNI.

	echo "  -i, interface (mandatory)"

#################
### FUNCTIONS ###
#################

funcFilter() {
	local _date_time
	local _interface
	local _file
	local _filter
	local _filter_ip
	local _filter_mac
	local _fields
	local _input
	local _dns

	_date_time=$(date +%Y-%m-%d_%H:%M:%S)
	_interface=${1}
	_file=$file
	_dns=$dns

	#interface or file
	if [ "${_interface}" != "" ]; then
		_input="-i ${_interface}"
	elif [ "${_file}" != "" ]; then
		_input="-r ${_file}"
	fi

	#SNI 
	if ! [[ ${_dns} -eq 1 ]]; then
		_filter="(tls.handshake.type == 1 && tls.handshake.extension.type == "server_name")"
		_fields="-e frame.time -e ip.src -e ip.dst -e tls.handshake.extensions_server_name"
	fi

	#time
	echo "Start-Time: ${_date_time}"

	#TSHARK command
	tshark ${_input} -T fields ${_fields} \
		-Y "${_filter} ${_filter_ip} ${_filter_mac}"

}


############
### MAIN ###
############

echo ""
echo "#############################################"
echo "####  OCSAF FreeSurveillanceCheck GPLv3  ####"
echo "####  https://freecybersecurity.org      ####"
echo "#############################################"
echo ""

read -p "Geben Sie das Interface an: " _INTERFACE

funcFilter ${_INTERFACE} 
################### END ###################
