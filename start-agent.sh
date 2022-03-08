#!/bin/bash

tag=${1:-1}
env=${2:-production}

name=eth2-agent${tag}-${env}

if docker ps --format '{{.Names}}' | grep -w $name &> /dev/null;
then
		# echo "do nothing"
		docker exec -it "$name" dbus-run-session -- ./start.sh
elif docker ps -a --format '{{.Names}}' | grep -w $name &> /dev/null;
then
		# echo "docker restart"
		docker stop "$name" &> /dev/null
		docker start -ai "$name"
else
		# echo "docker run"
		docker run --name "$name" -i -t -e NODE_ENV="$env" --privileged jadewallet/eth2-agent:latest
fi
