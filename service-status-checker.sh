#!/bin/bash
# Check the status of a specific service 
SERVICE=$1
systemctl is-active --quiet $SERVICE && echo "$SERVICE is running" || echo "$SERVICE is not running"