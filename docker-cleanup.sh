#!/bin/bash
# Docker container and image cleanup
# Removes all stopped containers, unused networks, dangling images, and volumes
docker system prune -af
docker volume prune -f
echo "Docker cleanup completed."