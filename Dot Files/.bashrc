# If not running interactively, don't do anything
[[ $- == *i* ]] || return

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias usage='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'
alias ls="ls --color"

# Powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
    source /usr/share/powerline/bindings/bash/powerline.sh
fi

# Linux Lite Custom Terminal
LLVER=$(awk '{print}' /etc/llver)

echo -e "Welcome to $LLVER ${USER}"
echo " "
date "+%A %d %B %Y, %T"
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'

#### add flatpak bianaries to $PATH  ####
export PATH="/var/lib/flatpak/exports/bin:/var/lib/flatpak/exports/share::/home/doug/.local/share/flatpak/exports/share:/home/doug/Code:/home/doug/Git_Files_General:$PATH"


alias editbashrc='vim ~/.bashrc; source ~/.bashrc'
alias update='sudo apt update; sudo apt upgrade -y'
alias install='sudo apt install -y'
alias remove='sudo apt remove -y'

alias l='ls -a'
alias ll='ls -lah'
alias snap='sudo snap'
alias hist='history'
alias fstrim='sudo fstrim -v'
alias fdupes='fdupes -rdN'
alias flatpack='flatpak'


alias noson='flatpak run io.github.janbar.noson --cli'
alias gitcom='git add * && git commit -a -m '
alias gitp='./home/doug/git_update.sh'

export PATH=$PATH:/var/lib/flatpak/exports/bin

