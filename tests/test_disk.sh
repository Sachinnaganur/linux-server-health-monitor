#!/bin/bash

source ../lib/disk.sh

collect_disk_usage

echo "Disk Usage: $DISK_USAGE%"
