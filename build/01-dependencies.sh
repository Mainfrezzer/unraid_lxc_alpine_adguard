#!/bin/sh
apk update
apk add nano unbound keepalived
rc-update add unbound default