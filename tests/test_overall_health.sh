#!/bin/bash

source ../lib/health_engine.sh

CPU_STATUS="HEALTHY"
MEMORY_STATUS="WARNING"
DISK_STATUS="HEALTHY"

check_overall_health

echo "Overall Status: $OVERALL_STATUS"
