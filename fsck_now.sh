#!/bin/bash
#<ANSI ESC COLORS>
export COLOR_RED='\e[0;31m'
export CLICOLOR=1

export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'

export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_RED='\e[0;31m'
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export CLR_SCREEN='\e[2J'
export ESC_HOME='\e[H'
#</ANSI ESC COLORS>
export now_date_YYMMDD="$(date +"%Y%m%d")"
export now_date_HMS="$(date +"%Y%m%d_%H%M%S")"
export now_date_sec1970="$(date +"%s")"

# Disk Autosuspend off
echo -1 >/sys/module/usbcore/parameters/autosuspend
disk="$1"

bn="$(basename "$disk")"
printf 'command: "fsck.ext %.128s"\n' "$bn"
echo "...waiting 5s"
sleep 5
fsck.ext4 -v -f -p -z "/home/user/undo_${now_date_HMS}_${bn}_.bin" $disk
#alterntive versions
fsck -vfprDt -z "/home/user/undo_${now_date_HMS}_${bn}_.bin" $disk
#fsck -vycfp -z /home/user/undo_${now_date_HMS}_${bn}_.bin $disk
