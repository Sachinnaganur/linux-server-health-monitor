#!/bin/bash

collect_cpu_usage() {

    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

}
