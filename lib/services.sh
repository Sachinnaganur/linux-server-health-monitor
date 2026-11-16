#!/bin/bash

collect_service_status() {

    SERVICE_STATUS=$(systemctl is-active ssh)

}
