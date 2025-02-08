cat<<EOF>/etc/periodic/weekly/roothint
#!/bin/sh
/usr/bin/wget -S https://www.internic.net/domain/named.cache -O /etc/unbound/root.hints >/dev/null 2>&1
rc-service unbound restart
/opt/AdGuardHome/AdGuardHome --update
#/root/update-lancache.sh > /var/log/update-lancache.log
#/root/update-lancachedomains.sh YOURIPHERE -q > /var/log/update-lancachedomains.log
EOF
chmod +x /etc/periodic/weekly/roothint
rc-service crond start && rc-update add crond
