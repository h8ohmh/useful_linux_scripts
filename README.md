# useful_linux_scripts
Here I post some useful LINUX Scripts making the work with CLI much more easier (eg Debian > Stretch):

* `fsck_now.sh` 
  Uses fsck (ext2/ext3/ext4) with a automatically datetimed undo file, meaning that one don't have anymore to use those manyfold switches which one has to type in case of a data disaster...
 
  ` fsck_now.sh /dev/sdx ` creates (as far your linux distribution has a fsck with an e2undo) an e2undo file with current datetime and tries to recover the given partition 
