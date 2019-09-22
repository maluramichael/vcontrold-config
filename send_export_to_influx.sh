#!/bin/bash

# send export to influx
curl -i -XPOST 'http://192.168.178.100:8086/write?db=vault' --data-binary @influx.txt
