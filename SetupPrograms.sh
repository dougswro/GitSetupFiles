#!/bin/bash

#Run as sudo
apt update && apt upgrade

apt --yes --force-yes install bpytop htop neofetch vim-gtk git

# move to directory to put git folder in correct place
cd /home
# change to anoter name then potrion files out form there with chron jobs to do this regularly
git clone https://github.com/dougswro/.ssh

#add cron job to update git repo at least dily
# WILL NEED NEW DIR AFTER ABOVE with new name
cd /etc/cron.daily/
echo -e '#!/bin/bash\n\ncd /~/.ssh/\ngit pull\ngit commmit -a -m 'hey'\ngit push' > gitupdateinsshfolder.sh

chmod 777 gitupdateinsshfolder.sh

# move to directory with git repo and have a adily cron job to redistribute the updated files

# folder for dot files to home
# folder for ssh keyfiles
# folder for server certs
# folder for chron tasks
# folder for  ssh and sshd config files
