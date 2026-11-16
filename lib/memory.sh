#!/bin/bash

collect_memory_usage() {

    MEMORY_USAGE=$(free | grep Mem | awk '{print int($3/$2 * 100)}')

}
