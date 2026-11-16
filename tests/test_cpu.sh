#!/bin/bash

source ../config/monitor.conf
source ../lib/cpu.sh

collect_cpu_usage

echo "CPU Usage: $CPU_USAGE%"
