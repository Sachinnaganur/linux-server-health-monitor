#!/bin/bash

source ../config/monitor.conf
source ../lib/health_engine.sh

CPU_USAGE=80

check_cpu_health

echo "CPU Status: $CPU_STATUS"
