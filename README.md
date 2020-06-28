# useful_linux_scripts
Here I post from time to time some useful LINUX Scripts making the work with CLI much more easier (eg Debian > Stretch):

* `fsck_now.sh` 
  Uses fsck (ext2/ext3/ext4) with a automatically datetimed undo file, meaning that one doesn't have anymore to use those manyfold switches which one has to type in case of a data disaster...
 
  ` fsck_now.sh /dev/sdx ` creates (as far your linux distribution has a fsck with an e2undo) an e2undo file with current datetime and tries to recover the given partition 


* `fix_mssing.sh`
fix missing handles one of the most frequently asked questions in LINUX: "Missing packages, libraries and dependecies". Running around the net I collected the most        possible solutions of that apt-get install problems into that file, meaning one has not more much researching if you got stuck on apt needs dependencies problems. 
Simply try  ` fix_missng.sh`on CLI and the shell script tries several tricks to install failed programs.  

* `stop_automount.sh`
In case of disk disaster (USB sticks, SSDs, HDs) the comfort of a LINUX GUI is far more to hell, due to the automount (like in Windows). Stopping the automount behaviour by this script one can use tools like ddrescue, myrescue, testdisk, photorec, fsk_now.sh, ntfsundelete etc. to rescue your data of your disastered disk/stick etc. To start automount again simply reverse the commands by start and unmask

* `hexdump_at.sh`
Hexdump_at corrects the missing feature to dump file data or disk memory data larger than 4G Bytes. This version uses the colorful hexer "hexyl", if you want to use hexdump then replace the `hexyl` command by `hexdump -C` in the shell file
