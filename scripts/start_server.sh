#!/bin/bash

# Load .env file
. "$(dirname "$0")/../.env"

# Check Arguments
if [ $# -lt 1 ]; then
  echo "Error: No command provided."
  usage

  exit 1
fi

# Process Arguments
case "$1" in
proxy)
  bash "${EV_ROOT_PATH}/scripts/init.d/init_proxy.sh"
  ;;
wildcraft)
  bash "${EV_ROOT_PATH}/scripts/init.d/init_wildcraft.sh"
  ;;
*)
  echo -e "Usage: $(basename $0) [proxy|wildcraft]"
  ;;
esac
