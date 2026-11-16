#!/bin/bash

collect_top_processes() {

    TOP_PROCESSES=$(ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6)

}
