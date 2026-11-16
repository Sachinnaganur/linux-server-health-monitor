#!/bin/bash

check_cpu_health() {

    if (( CPU_USAGE >= CPU_CRITICAL )); then
        CPU_STATUS="CRITICAL"
    elif (( CPU_USAGE >= CPU_WARNING )); then
        CPU_STATUS="WARNING"
    else
        CPU_STATUS="HEALTHY"
    fi

}
