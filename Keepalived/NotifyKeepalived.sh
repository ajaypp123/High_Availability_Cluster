#!/bin/bash

TYPE=$1
NAME=$2
STATE=$3

KEEPALIVED="/etc/keepalived"

echo "TYPE=$TYPE ,NAME=$NAME,STATE=$STATE "

case $STATE in
           "MASTER")
                  systemctl restart grafana-server
                  exit 0
                  ;;
           "BACKUP")
                  systemctl stop grafana-server
                  exit 0
                  ;;
           *)        echo "unknown state"
                  exit 1
                  ;;
esac

