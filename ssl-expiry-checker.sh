#!/bin/bash
# Check SSL certificate expiration
# Retrieves the SSL certificate for the specified domain and calculates how many days are left until it expires
DOMAIN="example.com"
EXPIRY_DATE=$(echo | openssl s_client -servername $DOMAIN -connect $DOMAIN:443 2>/dev/null | openssl x509 -noout -dates | grep notAfter | cut -d= -f2)
DAYS_LEFT=$(( ($(date -d "$EXPIRY_DATE" +%s) - $(date +%s)) / 86400 ))
echo "SSL certificate for $DOMAIN expires in $DAYS_LEFT days."