#!/bin/sh

function dockerCount {
  IMAGES="$(docker image ls -q | wc | awk '{print $1}')"
  RUNNING="$(docker ps -q | wc | awk '{print $1}')"
  EXITED="$(docker ps -qa | wc | awk '{print $1}')"
  let "EXITED = $EXITED - $RUNNING"
}

while true; do
  dockerCount
  echo "$IMAGES images and $RUNNING container(s) running and $EXITED container(s) exited"
  sleep 30
done
