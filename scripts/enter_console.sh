#!/usr/bin/env bash

case $1 in
"proxy")
  screen -r proxy
  ;;
"wildcraft")
  screen -r wildcraft
  ;;
"develop")
  screen -r develop
  ;;
*)
  echo -e "Usage: $0 [proxy|wildcraft|develop]"
  ;;
esac
