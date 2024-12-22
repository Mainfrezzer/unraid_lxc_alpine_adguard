#!/bin/sh
apk update
apk add wget curl nano unbound keepalived iputils-ping bash
rc-update add unbound default