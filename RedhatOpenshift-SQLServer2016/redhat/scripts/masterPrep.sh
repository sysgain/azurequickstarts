#!/bin/bash
echo $(date) " - Starting Script"

USER=$1
PASSWORD=$2
POOL_ID=$3

# Register Host with Cloud Access Subscription
echo $(date) " - Register host with Cloud Access Subscription"

# subscription-manager unregister
# yum -y remove RHEL7
# rm -f /etc/yum.repos.d/rh-cloud.repo

subscription-manager register --username=$USER --password=$PASSWORD
subscription-manager attach --pool=$POOL_ID

# Disable all repositories and enable only the required ones
echo $(date) " - Disabling all repositories and enabling only the required repos"

subscription-manager repos --disable="*"

sleep 10

subscription-manager repos \
    --enable="rhel-7-server-rpms" \
    --enable="rhel-7-server-extras-rpms" \
    --enable="rhel-7-server-ose-3.2-rpms"

# Install base packages and update system to latest packages
echo $(date) " - Install base packages and update system to latest packages"

yum -y install wget git net-tools bind-utils iptables-services bridge-utils bash-completion httpd-tools
yum -y update

# Install OpenShift utilities
echo $(date) " - Installing OpenShift utilities"

yum -y install atomic-openshift-utils

# Install Docker 1.9.1 
echo $(date) " - Installing Docker 1.9.1"

# yum -y install docker-1.9.1
yum -y install docker-1.10.3
sed -i -e "s#^OPTIONS='--selinux-enabled'#OPTIONS='--selinux-enabled --insecure-registry 172.30.0.0/16'#" /etc/sysconfig/docker

# Create thin pool logical volume for Docker
echo $(date) " - Creating thin pool logical volume for Docker and staring service"

echo "DEVS=/dev/sdc" >> /etc/sysconfig/docker-storage-setup
echo "VG=docker-vg" >> /etc/sysconfig/docker-storage-setup
docker-storage-setup

# Enable  and start Docker services

systemctl enable docker
systemctl start docker

echo $(date) " - Script Complete"
