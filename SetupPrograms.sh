#!/bin/bash

#Run as sudo
echo 'updating Distro first'
apt update && apt upgrade

echo 'installing a few programs'
apt --yes --force-yes install bpytop htop neofetch vim-gtk git tmux

# move to directory to put git folder in correct place
#echo 'cloning GIT repo to /GitSetupFiles/'
#cd /
#git clone https://dougswro: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@github.com/dougswro/GitSetupFiles

# Cron Jobs
echo 'making a daily GIT update cron job'
cd /etc/cron.daily/
# MAke script to update git daily
echo -e '#!/bin/bash\n\ncd /GitSetupFiles/\ngit pull\ngit add *\ngit commmit -a -m 'Automatic Daily Push'\ngit push' > gitupdater.sh
#make it executable
chmod 777 gitupdater.sh

# move to directory with git repo to begin to redistribute files
echo ' Moving Dotfiles to Home Directory'
cd /GitSetupFiles/dotfiles
cp * ~/

echo 'Moving SSH and SSHD config files to /etc/ssh'
cd /GitSetupFiles/ssh/to_etc-ssh_folder
cp * /etc/ssh

echo 'moving ssh keys / known hosts / and suthorized keys Files to ~/.ssh of Roots home DIR'
cd /GitSetupFiles/ssh
cp * /root/.ssh

#echo 'Moving cron-jobs to their place'
#cd /GitSetupFiles/cron-jobs
#cp
echo 'changing global GIT config settings'
cd /GitSetupFiles
git config --global user.name dougswro
git config --global user.email dougs249@gmail.com
git config --global color.ui auto
# last git pull and push to store credentials
git config credential.helper store
git pull
git push

# can change git config file to url https://dougswro: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@github.com/dougswro/GetSetupFiles

# folder for server certs
# folder for chron tasks
# --maybe other git repo for secrets --
# script to change login shell to bash (or tmux if i can config it)
# scipt to compare files in git repo daily and move them as needed