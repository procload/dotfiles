# This will make a new command called freewifi that changes you MAC address to
#a random value. Note that to reset your MAC address, you'll either need to
# reboot, or take a backup of it first with: ifconfig en0 | grep ether
alias freewifi="sudo ifconfig en0 ether `openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`"
