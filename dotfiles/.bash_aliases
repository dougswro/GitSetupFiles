# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "$(dircolors)"
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -a'

alias ss='sudo !!'
alias hist='history'
alias top='byptop'
alias rm='rm -i'
alias cp='pushd'
alias mv='mv -i'

alias apt='sudo apt'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'

alias git commit='git commit -a -m 'none''


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history>'
