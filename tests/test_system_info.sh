#!/bin/bash

source ../lib/system_info.sh

collect_system_info

echo "Hostname: $HOSTNAME"
echo "OS: $OS_NAME"
echo "Kernel: $KERNEL_VERSION"
echo "Uptime: $UPTIME"
