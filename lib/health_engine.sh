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

check_memory_health() {

    if (( MEMORY_USAGE >= MEMORY_CRITICAL )); then
        MEMORY_STATUS="CRITICAL"
    elif (( MEMORY_USAGE >= MEMORY_WARNING )); then
        MEMORY_STATUS="WARNING"
    else
        MEMORY_STATUS="HEALTHY"
    fi
}

check_disk_health() {

    if (( DISK_USAGE >= DISK_CRITICAL )); then
        DISK_STATUS="CRITICAL"
    elif (( DISK_USAGE >= DISK_WARNING )); then
        DISK_STATUS="WARNING"
    else
        DISK_STATUS="HEALTHY"
    fi
}}
