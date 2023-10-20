#!/bin/bash
# setup dashy dashboard for server by compose file
# -E: keep env vars in sudo command
sudo -E docker compose -f ./dashy-docker-compose.yml up -d

