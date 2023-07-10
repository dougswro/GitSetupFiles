#!/bin/bash

######
#
#  To Do
#
######

# make one to download my git repos and others like celeste times et all
# one for iclient stff

# make it self update and uprade and instal all and auto clean. Prolly needs to set up Repos and PPA keys too


#####  Do the set up here



#####  Set up Repos



##### Set up PPA keys



##### Programs (maybe do a for_in_ bash loop?)
# maybe eventually set up sepearta lists for server, main comp, HA, etc that it can ennumerate through

# see #https://www.geeksforgeeks.org/bash-scripting-for-loop/

echo Installing Programs

s=("vim" "sudo" "python3" "adb" "neofetch" "android-sdk-platform-tools-common" "curl")

for n in ${s[@]};
do 
    echo $n
done

android-sdk-platform-tools-common
docker
docker-compose
fdupes
fdisk
ffmpg
findutils
ftp
#gdisk
gcc
gimp
git
gparted
handbrake-cli
handbrake
#hwdata
icaclient/now
imagemagick/jammy,now
mariadb
mosquitto
mkchromecast/jammy,jammy,now
mousetweaks/jammy,now
mysql-common
ncat
nginx
nmap
nvidia-compute-utils-515
obs-studio
openvpn
openssh
perl
php-fpm
php8.1-fpm
protonvpn
protonvpn-cli
pulseaudio
qbittorrent
rsync
samba
shotwell
shotcut
snap
#smartmontools
#spice-vdagent
steam
sweeper
telegram-desktop/
terminator
udisks2/
veracrypt
vim
vlc
wireguard
wireshark
#xbindkeys
youtube-dl
########yelp
xz-utils
zip
# espanso 
xbindkeys 
x11-utils 
xdotool

