#!/bin/bash

# configuration
source config/monitor.conf

#  modules
source lib/config_validator.sh
source lib/logging.sh
source lib/system_info.sh
source lib/cpu.sh
source lib/memory.sh
source lib/disk.sh
source lib/processes.sh
source lib/services.sh
source lib/health_engine.sh

# Validate configuration
validate_config || exit 1

# Collect details
collect_system_info
collect_cpu_usage
collect_memory_usage
collect_disk_usage
collect_top_processes
collect_service_status

# health check
check_cpu_health
check_memory_health
check_disk_health
check_overall_health

# Display report
echo "================================="
echo " Linux Server Health Monitor"
echo "================================="
echo
echo "Hostname      : $HOSTNAME"
echo "OS            : $OS_NAME"
echo "Kernel Version: $KERNEL_VERSION"
echo "Uptime        : $UPTIME"
echo
echo "CPU Usage     : $CPU_USAGE%"
echo "CPU Status    : $CPU_STATUS"
echo
echo "Memory Usage  : $MEMORY_USAGE%"
echo "Memory Status : $MEMORY_STATUS"
echo
echo "Disk Usage    : $DISK_USAGE%"
echo "Disk Status   : $DISK_STATUS"
echo
echo "Overall status: $OVERALL_STATUS"
echo
echo "SSH Service   : $SERVICE_STATUS"
echo
echo "Top Processes:"
echo "$TOP_PROCESSES"

# Log results
log_message "INFO" "CPU" "Usage=$CPU_USAGE Status=$CPU_STATUS"
log_message "INFO" "MEMORY" "Usage=$MEMORY_USAGE Status=$MEMORY_STATUS"
log_message "INFO" "DISK" "Usage=$DISK_USAGE Status=$DISK_STATUS"
log_message "INFO" "OVERALL" "Status=$OVERALL_STATUS"
log_message "INFO" "SERVICE" "SSH=$SERVICE_STATUS"
