# AWS EC2 Automated Disk Monitoring

## Project Overview
Automated disk monitoring on AWS EC2 using Bash scripting and Cron.

## Features
- Checks disk usage automatically.
- Runs every 5 minutes.
- Saves monitoring results in a log file.
- Generates warning if disk usage exceeds 80%.

## Technologies
- AWS EC2
- Linux
- Bash Scripting
- Cron Job

## Cron Schedule
*/5 * * * * /bin/bash /home/ec2-user/ec2-cron-monitor/disk_monitor.sh
