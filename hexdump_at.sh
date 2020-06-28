#!/bin/bash
#<ANSI ESC COLORS>
export COLOR_RED='\e[0;31m'
export CLICOLOR=1
export COLOR_NC='\e[0m' # No Color
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
export COLOR_LIGHT_PURPLE='\e[1;35m'
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

fpath="$1"
count="$3"
pos="$2"
echo "$1 $2 $3"
if [[ -z "$fpath" ]]; then
	exit -1
fi
if [[ -z "$count" ]]; then
	count="10"
fi
if [[ -z "$pos" ]]; then
	pos= 0;
fi
rpos=$(( $2 / 1024 ))
echo $rpos
#hexer="hexdump -C"
hexer="hexyl"
reset
echo "$1 $2 $3"
dd \
	if=$fpath \
	skip=$rpos \
	bs=1024 \
	count=$3 \
	iflag=skip_bytes,count_bytes | hexyl
#parallel --progress -a file1 'grep -F {} file2'
#int main(void)
#{
  #ifstream data_file("my_file.bin", ios::binary);
  #if (!data_file)
  #{
    #cerr << "Error opening my_file.bin.\n";
    #EXIT_FAILURE;
  #}
  #const uint32_t search_key = 0x12345678U;
  #uint32_t value;
  #while (data_file.read((char *) &value, sizeof(value))
  #{
    #if (value == search_key)
    #{
      #cout << "Found value.\n";
      #break;
    #}
  #}
  #return EXIT_SUCCESS;
#}
