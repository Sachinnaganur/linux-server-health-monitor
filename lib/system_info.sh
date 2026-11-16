#!/bin/bash

collect_system_info() {

    HOSTNAME=$(hostname)

    OS_NAME=$(grep "^PRETTY_NAME=" /etc/os-release | cut -d '"' -f2)

    KERNEL_VERSION=$(uname -r)

    UPTIME=$(uptime -p)

}
