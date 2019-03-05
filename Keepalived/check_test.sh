#!usr/bin/bash

val=$(systemctl status grafana-server | grep inactive | wc -l)

exit $val

