#!/bin/bash
#
get_timestamp(){
	date +"%Y-%m-%dT%H:%M:%S%z"
}

log_message(){
	local level="$1"
	local component="$2"
	local message="$3"

	echo "$(get_timestamp) [$level] [$component] $message" >> "$LOG_FILE"
}	
