#!/bin/bash
# start alist(file index server) by docker

sudo -E docker compose -f ./alist-docker-compose.yml up -d
