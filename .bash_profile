# Setup the prompt
source ~/.bash_prompt

# Alias for sourcing
alias so='source ~/.bash_profile'

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

###### VIM ######
export EDITOR='nvim'

alias vim="nvim"
alias vi="nvim"
alias im='nvim'
alias cim='nvim'

vim_base () {
  ln -v -s -f ~/dotfiles/.vim/.vimrc_base ~/.vimrc
  vim
  ln -v -s -f ~/dotfiles/.vim/.vimrc ~/.vimrc
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Clean the vim view files
rm -rf /Users/ken/dotfiles/.vim/view/**

# Make sure tmux run in 256 color scheme
alias tmux="TERM=screen-256color tmux"

# z
if command -v brew >/dev/null 2>&1; then
  # Load rupa's z if installed
  [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

# Git
alias aa='git aa'
alias pull='git pull'
alias push='git push'

# Npm
alias unit='npm run test'
alias coverage='npm run test:dev-coverage'
alias lint='npx eslint'
alias serve='python -m SimpleHTTPServer '

# Workflow
alias xit='exit'

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

# For others
source ~/dotfiles/mom/.bash_profile
