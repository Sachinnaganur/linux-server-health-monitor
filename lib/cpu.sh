#!/bin/bash

collect_cpu_usage() {

    CPU_USAGE=$(vmstat 1 2 | tail -1 | awk '{print 100-$15}')

}
