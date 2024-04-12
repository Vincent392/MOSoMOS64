echo PLEASE, MAKE A BACKUP BEFORE RUNNING.
echo I AM *NOT* LIABLE IF YOU BREAK YOUR SYSTEM RUNNING THIS.
Read junk
echo install Rosetta
softwareupdate --install-rosetta
echo re-enable 32 bit execution from Darwin
sudo nvram boot-args=”no32exec=0″