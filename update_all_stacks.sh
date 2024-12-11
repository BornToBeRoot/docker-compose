#!/bin/bash

# ~# nano /etc/crontab
#
# 33 1    * * 2   root    /opt/scripts/update_all_containers.sh
#

BASEPATH=/opt/container/stacks

for directory in $BASEPATH/*/ ; do
    cd "$directory"
    docker compose pull && docker compose stop && docker compose up -d
    sleep 30s
done

docker image prune --all --force
