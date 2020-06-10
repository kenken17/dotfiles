# Setup the prompt
source ~/.bash_prompt

# Alias for sourcing
alias so='source ~/.bash_profile'

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

alias serve='python -m SimpleHTTPServer '

# Workflow
alias xit='exit'

###### VIM ######
export EDITOR='vim'

alias vim="vim"
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

# Make sure tmux run in 256 color scheme
# alias tmux="TERM=screen-256color tmux"

# Ports
alias show_p='netstat -an -ptcp | grep LISTEN'
kill_p () {
  kill -9 $(lsof -t -i:$1)
}

# Docker
alias d_ps='docker ps --format "table {{.ID}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}"'

d_bash () {
  docker exec -it $1 bash
}

d_prune_shit () {
  docker system prune -f
  docker volume prune -f
}
