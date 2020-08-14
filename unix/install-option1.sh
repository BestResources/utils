#!/bin/bash
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd ${CWD}

sudo chmod 777 -R tools

./tools/aws.sh
./tools/docker.sh
./tools/docker-compose.sh