#!/bin/sh
cd /home/build
chmod 755 $(ls -1 /home/build/ | grep -v "^[0-9][0-9]-")
cp /home/build/unbound.conf /etc/unbound/unbound.conf
rm /etc/keepalived/*
mkdir -p /etc/keepalived/
cp /home/build/keepalived.conf /etc/keepalived/keepalived.conf
chmod 644 /etc/keepalived/keepalived.conf
cp /home/build/update-applications.sh /root/update-applications.sh
cp /home/build/update-roothints.sh /root/update-roothints.sh
cp /home/build/AdGuardHome.yaml /opt/AdGuardHome/AdGuardHome.yaml