#!/bin/bash

source ../lib/memory.sh

collect_memory_usage

echo "Memory Usage: $MEMORY_USAGE%"
