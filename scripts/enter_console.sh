#!/bin/bash

case $1 in
"proxy")
  screen -r proxy
  ;;
"wildcraft")
  screen -r wildcraft
  ;;
*)
  echo -e "Usage: $0 [proxy|wildcraft]"
  ;;
esac
