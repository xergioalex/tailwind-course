#!/bin/bash

# Utils functions
. ./../utils.sh

# Create envs vars if don't exist
ENV_FILES=(".env" "tailwindapp/.env" "../../.env")
utils.check_envs_files "${ENV_FILES[@]}"

# Load environment vars, to use from console, run follow command:
utils.load_environment
utils.load_environment_permissions

# Menu options
if [[ "$1" == "setup" ]]; then
    utils.printer "Setup..."
    docker-compose build tailwindapp
elif [[ "$1" == "stop" ]]; then
    utils.printer "Stop services"
    docker-compose stop $2
fi
