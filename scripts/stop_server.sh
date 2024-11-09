#!/bin/bash

# Load .env file
. "$(cd "$(dirname "$0")" && pwd)/../.env"

# Check Arguments
if [ $# -lt 1 ]; then
  echo "Error: No command provided."
  usage

  exit 1
fi

# Process Arguments
case "$1" in
proxy)
  screen -S proxy -X end
  ;;
wildcraft)
  screen -S wildcraft -X stop
  ;;
*)
  echo -e "Usage: $0 [proxy|wildcraft]"
  ;;
esac
