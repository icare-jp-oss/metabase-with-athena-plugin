#!/bin/sh

set -e

hostip=$(ip a | grep -A2 eth0 | grep -v ecs-eth0 | grep inet | awk '{print $2}' | sed 's#/.*##g')

if [ $hostip ]; then
	echo "host ip: ${hostip}"
	echo "host name: $(hostname)"
	echo "${hostip} $(hostname)" >> /etc/hosts
fi

exec "$@"
