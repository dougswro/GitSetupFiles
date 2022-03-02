# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "$(dircolors)"
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -a'

# some more ls aliases
#alias ll='ls -alF'
#alias la='ls -A'
#alias l='ls -a'
#alias apt='sudo apt'
#alias ss='sudo'
alias hist='history'
#alias update='sudo apt update'
#alias upgrade='sudo apt upgrade'
alias top='htop'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'



# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history>'


