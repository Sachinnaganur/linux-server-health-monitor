#!/bin/bash

source ../lib/services.sh

collect_service_status

echo "Service Status: $SERVICE_STATUS"
