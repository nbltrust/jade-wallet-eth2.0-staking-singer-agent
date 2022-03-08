#!/bin/bash

env=${1:-production}

name=eth2-batch-${env}

if ! docker ps -a --format '{{.Names}}' | grep -w $name &> /dev/null;
then
		# echo "docker run"
		docker run --name "$name" -i -t -e NODE_ENV="$env" --privileged jadewallet/eth2-batch:latest
else
		# echo "docker restart"
		docker stop "$name" &> /dev/null
		docker start -ai "$name"
fi
