#!/bin/bash

validate_config() {

    # CPU thresholds
    if (( CPU_WARNING > CPU_CRITICAL )); then
        echo "ERROR: CPU warning threshold cannot be greater than CPU critical threshold"
        return 1
    fi

    # Memory thresholds
    if (( MEMORY_WARNING > MEMORY_CRITICAL )); then
        echo "ERROR: Memory warning threshold cannot be greater than Memory critical threshold"
        return 1
    fi

    # Disk thresholds
    if (( DISK_WARNING > DISK_CRITICAL )); then
        echo "ERROR: Disk warning threshold cannot be greater than Disk critical threshold"
        return 1
    fi

    # Sample interval
    if (( CPU_SAMPLE_INTERVAL <= 0 )); then
        echo "ERROR: CPU sample interval must be greater than 0"
        return 1
    fi

    # Top process count
    if (( TOP_PROCESS_COUNT <= 0 )); then
        echo "ERROR: Top process count must be greater than 0"
        return 1
    fi

    return 0
}
