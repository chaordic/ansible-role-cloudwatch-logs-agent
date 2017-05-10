#!/bin/sh
# Version: 1.3.9
pkill -u root -f awslogs.conf
sync
echo -n $$ > /var/awslogs/state/awslogs.pid
[ -f /var/awslogs/etc/proxy.conf ] && . /var/awslogs/etc/proxy.conf
/usr/bin/env -i HTTPS_PROXY=$HTTPS_PROXY HTTP_PROXY=$HTTP_PROXY NO_PROXY=$NO_PROXY AWS_CONFIG_FILE=/var/awslogs/etc/aws.conf HOME=/root /usr/bin/nice -n 4 /var/awslogs/bin/aws logs push --config-file /var/awslogs/etc/awslogs.conf --additional-configs-dir /var/awslogs/etc/config >> /var/log/awslogs.log 2>&1
