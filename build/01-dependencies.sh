#!/bin/sh
apk update
apk add nano unbound keepalived git jq bash
rc-update add unbound default