#!/bin/bash

# Load .env file
. "$(dirname "$0")/../.env"

# Update Paper Engine
PROJECT=${EV_ENGINE_SERVER}
MINECRAFT_VERSION=${EV_VERSION_SERVER}

LATEST_BUILD=$(curl -s https://api.papermc.io/v2/projects/${PROJECT}/versions/${MINECRAFT_VERSION}/builds |
  jq -r '.builds | map(select(.channel == "default") | .build) | .[-1]')

if [ "$LATEST_BUILD" != "null" ]; then
  JAR_NAME=${PROJECT}-${MINECRAFT_VERSION}-${LATEST_BUILD}.jar
  PAPERMC_URL="https://api.papermc.io/v2/projects/${PROJECT}/versions/${MINECRAFT_VERSION}/builds/${LATEST_BUILD}/downloads/${JAR_NAME}"

  # Download the latest Paper version
  curl -o "${EV_ROOT_PATH}/libraries/engines/${JAR_NAME}" $PAPERMC_URL
  echo "Download completed"
else
  echo "No stable build for version ${MINECRAFT_VERSION} found :("
fi

# Update Velocity Proxy
PROJECT=${EV_ENGINE_PROXY}
PROXY_VERSION=${EV_VERSION_PROXY}

LATEST_BUILD=$(curl -s https://api.papermc.io/v2/projects/${PROJECT}/versions/${PROXY_VERSION}/builds |
  jq -r '.builds | map(select(.channel == "default") | .build) | .[-1]')

if [ "$LATEST_BUILD" != "null" ]; then
  JAR_NAME=${PROJECT}-${PROXY_VERSION}-${LATEST_BUILD}.jar
  PAPERMC_URL="https://api.papermc.io/v2/projects/${PROJECT}/versions/${PROXY_VERSION}/builds/${LATEST_BUILD}/downloads/${JAR_NAME}"

  # Download the latest
  curl -o "${EV_ROOT_PATH}/libraries/engines/${JAR_NAME}" $PAPERMC_URL
  echo "Download completed"
else
  echo "No stable build for version ${PROXY_VERSION} found :("
fi
