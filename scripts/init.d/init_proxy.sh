#!/bin/bash

# Load .env file
. "$(dirname "$0")/../../.env"

# Go to the server directory
cd "${EV_ROOT_PATH}/servers/proxy"

# Start the server
screen -dmS proxy java -jar "${EV_ROOT_PATH}/libraries/engines/"${EV_ENGINE_PROXY}*.jar
