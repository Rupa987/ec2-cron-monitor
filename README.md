

# AWS EC2 Automated Disk Monitoring

## Project Overview
This project automates disk usage monitoring on an AWS EC2 Linux instance using Bash scripting and Cron.

The script checks disk usage every 5 minutes and records the results in a log file. If disk usage exceeds 80%, it generates a warning.

## Features
- Automated disk usage monitoring.
- Executes every 5 minutes using Cron.
- Records date, time, disk usage, and status.
- Generates a warning when disk usage exceeds 80%.
- Maintains monitoring history in a log file.

## Technologies Used
- AWS EC2
- Amazon Linux
- Bash Scripting
- Linux Commands
- Cron

## Project Structure
```text
ec2-cron-monitor/
├── README.md
├── disk_monitor.sh
└── .gitignore
```

## Cron Configuration

```bash
*/5 * * * * /bin/bash /home/ec2-user/ec2-cron-monitor/disk_monitor.sh
```

This cron job executes the monitoring script every 5 minutes.

## Sample Log Output

```text
Date: Fri Oct 30 19:40:01 UTC 2026
Disk Usage: 22%
Status: Disk usage is NORMAL
```

## How to Run

```bash
chmod +x disk_monitor.sh
./disk_monitor.sh
```

## Verify Logs

```bash
cat disk_monitor.log
```

## Learning Outcomes
- Linux server administration
- Bash scripting and automation
- Cron job scheduling
- Disk monitoring and log management
- AWS EC2 hands-on experience
