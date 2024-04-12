echo PLEASE, MAKE A BACKUP BEFORE RUNNING.
echo I AM *NOT* LIABLE IF YOU BREAK YOUR SYSTEM RUNNING THIS.
Read junk
echo re-enable 32 bit execution from Darwin
sudo nvram boot-args=”no32exec=0″
echo install MOSoMOS64 (MacOS 32 bit on MacOS 64 bit)
sudo mkdir /MOSoMOS64
sudo nano /MOSoMOS64/mosomos64.sh
sudo nano /MOSoMOS64/MOSOMOS64.sh
sudo nano /MOSoMOS64/MOSoMOS64.sh

script_content="#!/bin/bash\n\n"
script_content+="# Backup current library paths\n"
script_content+="export DYLD_LIBRARY_PATH_BACKUP=\$DYLD_LIBRARY_PATH\n\n"
script_content+="# Point libraries to macOS 10.14's ones\n"
script_content+="export DYLD_LIBRARY_PATH=/MOSoMOS64/libs\n\n"
script_content+="# Run your application here\n\n"
script_content+="# Revert to the normal library paths\n"
script_content+="export DYLD_LIBRARY_PATH=\$DYLD_LIBRARY_PATH_BACKUP\n"

# Write the content to mososmos64.sh
echo -e "$script_content" > mososmos64.sh

echo -e "bash mososmos64.sh" > MOSOMOS64.sh

echo -e "bash mososmos64.sh" > MOSoMOS64.sh

echo make MOSOMOS64 Runnable (if anything spits out here, ignore it)

sudo chmod +x /MOSoMOS64/mososmos64.sh
sudo chmod +x /MOSoMOS64/MOSOSMOS64.sh
sudo chmod +x /MOSoMOS64/MOSoMOS64.sh

echo add it to the usr folder
sudo ln -s /MOSoMOS64/mosomos64.sh /usr/local/bin/mos64
sudo ln -s /MOSoMOS/mosomos64.sh /usr/local/bin/MOS64