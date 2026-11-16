#!/bin/bash

collect_disk_usage() {

    DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

}
