#!/bin/sh

# Obtener la dirección IP del servicio dns_server
DNS_SERVER_IP=$(getent hosts dns_server | awk '{ print $1 }')

# Actualizar /etc/resolv.conf con la dirección IP del servicio dns_server
echo "nameserver $DNS_SERVER_IP" > /etc/resolv.conf

# Mantener el contenedor en ejecución
tail -f /dev/null