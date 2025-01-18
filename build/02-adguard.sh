#!/bin/sh
wget --no-verbose -O - https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v
/opt/AdGuardHome/AdGuardHome -s stop