Linux Server Health Monitor
A modular Linux server monitoring solution developed using Bash scripting for monitoring system health, resource utilization, service availability, and operational status.

Project Overview
Linux system administrators frequently perform repetitive health checks to verify that servers are operating correctly. Monitoring CPU utilization, memory consumption, disk usage, critical services, and resource-intensive processes manually can be time-consuming and error-prone.

This project was developed to automate these operational checks and provide a consolidated health report from a single command-line interface.

The monitor collects important system metrics, evaluates them against configurable thresholds, generates health classifications, and writes timestamped logs for future analysis.

The project follows a modular architecture where each monitoring responsibility is implemented in a separate module, making the system easier to maintain, test, and enhance.

Problem Statement
Linux servers can experience:

High CPU utilization
Memory exhaustion
Disk space shortages
Failed or inactive services
Excessive resource consumption by processes
Administrators often need to execute multiple commands to investigate system health.

Examples:

top
free -h
df -h
ps aux
systemctl status service-name
Performing these checks repeatedly can increase administrative effort and may delay issue detection.

This project addresses this challenge by providing a centralized monitoring solution that combines multiple health checks into a single executable Bash application.

Objectives
The primary objectives of this project are:

Automate Linux server health monitoring.
Collect critical system metrics.
Evaluate system health using configurable thresholds.
Generate persistent operational logs.
Maintain a modular project structure.
Demonstrate practical Linux administration skills.
Demonstrate Bash scripting and Git workflow practices.
Provide a foundation for future monitoring enhancements.
Key Features
System Information Collection
Collects:

Hostname
Operating System Information
Kernel Version
System Uptime
CPU Monitoring
Collects CPU utilization percentage.
Evaluates CPU health using configurable thresholds.
Memory Monitoring
Collects memory usage statistics.
Calculates memory utilization percentage.
Disk Monitoring
Collects disk usage information.
Evaluates disk health against configured thresholds.
Process Monitoring
Displays top resource-consuming processes including:

Process ID (PID)
Process Name
CPU Usage
Memory Usage
Service Monitoring
Monitors critical services and reports their status.

Current implementation monitors:

ssh.service
Health Evaluation Engine
Classifies monitored resources into:

HEALTHY
WARNING
CRITICAL
Overall Health Status
Generates an overall server health status based on CPU, Memory, and Disk evaluations.

Logging
Generates timestamped operational logs and stores them for future analysis.

Testing
Includes standalone module-level test scripts for validating individual monitoring components.

Technologies Used
Bash Shell Scripting
Linux System Utilities
Git Version Control
Cron-ready Scheduling Design
Target Environment
Ubuntu Linux
Linux distributions supporting Bash
systemd-based environments
