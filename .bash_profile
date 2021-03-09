# Setup the prompt
source ~/.bash_prompt

# Alias for sourcing
alias so='source ~/.bashrc'

# Do not show the zsh message anymore
export BASH_SILENCE_DEPRECATION_WARNING=1

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Kep history forever
export HISTFILESIZE=
export HISTSIZE=

# Colours!
NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

alias ls="ls --color"
alias dir='dir --color'
alias vdir='vdir --color'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'
alias tree='tree -C'
alias pull='git pull'
alias push='git push'
alias solo='git solo'
alias pair='git mob'

# typo
alias sduo=sudo
alias sodu=sudo
alias suod=sudo

# Workflow
alias xit='exit'
alias open='xdg-open'

###### VIM ######
export EDITOR='vim'

alias vi="vim"
alias im='vim'
alias cim='vim'

vim_base () {
  ln -v -s -f ~/dotfiles/.vim/.vimrc_base ~/.vimrc
  vim
  ln -v -s -f ~/dotfiles/.vim/.vimrc ~/.vimrc
}

# Clean the vim view files
rm -rf /Users/ken/dotfiles/.vim/view/**

# Ports
alias show_p='netstat -an -ptcp | grep LISTEN'
kill_p () {
  kill -9 $(lsof -t -i:$1)
}

# Docker
alias d_ps="docker ps --format \"table {{.ID}}\t| {{.Status}}\t| {{.Ports}}\t| {{.Names}}\" |  LC_ALL=C sort -t$'|' -k4,4"

d_bash () {
  docker exec -it $1 bash
}

d_prune_shit () {
  docker system prune --volumes -f
}

d_pause_all () {
  docker pause $(docker ps -a -q)
}

d_unpause_all () {
  docker unpause $(docker ps -a -q)
}

# Leisure
alias h_connect="echo -e 'connect 94:DB:56:98:13:44' | bluetoothctl"
alias h_disconnect="echo -e 'disconnect 94:DB:56:98:13:44' | bluetoothctl"
