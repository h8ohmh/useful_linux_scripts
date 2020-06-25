#!/bin/bash
if [[ "$USER" != 'root' ]]; then
asudo="sudo"
fi
#$asudo apt-get clean
#$asudo apt-get autoremove
$asudo apt --fix-broken install
$asudo apt-get update && $asudo apt-get upgrade
$asudo dpkg --configure -a
$asudo apt-get install -f


