#!/bin/bash

# Get Environment Variables
if [ -f .env ]; then
  # Load .env file
  . .env
else
  echo "Environment Variables not found! (.env file)"
  exit
fi

# Define Functions
start() {
  bash "${EV_ROOT_PATH}/scripts/start_server.sh" "$1"
}

stop() {
  bash "${EV_ROOT_PATH}/scripts/stop_server.sh" "$1"
}

console() {
  bash "${EV_ROOT_PATH}/scripts/enter_console.sh" "$1"
}

update() {
  bash "${EV_ROOT_PATH}/scripts/update_engine.sh"
  bash "${EV_ROOT_PATH}/scripts/update_link.sh"
}

usage() {
  echo "Usage: $0 [start|stop|console|update] option"
  echo ""
  echo "Commands:"
  echo "  start    Start the service with optional argument [option]"
  echo "  stop     Stop the service with optional argument [option]"
  echo "  console  Open the console with optional argument [option]"
  echo "  update   Update the engine and the link of plugins"
}

# Check Arguments
if [ $# -lt 1 ]; then
  echo "Error: No command provided."
  usage

  exit 1
fi

# Process Arguments
case "$1" in
start)
  if [ -z "$2" ]; then
    echo "Error: Missing options for command 'start'"
    usage
    exit 1
  fi

  start "$2"
  ;;
stop)
  if [ -z "$2" ]; then
    echo "Error: Missing options for command 'stop'"
    usage
    exit 1
  fi

  stop "$2"
  ;;
console)
  if [ -z "$2" ]; then
    echo "Error: Missing options for command 'console'"
    usage
    exit 1
  fi

  console "$2"
  ;;
update)
  update
  ;;
*)
  echo "Error: Invalid command. '$1'"
  usage

  exit 1
  ;;
esac
