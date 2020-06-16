###### VIM ######
export EDITOR='vim'

alias vim="vim"
alias vi="vim"
alias im='vim'
alias cim='vim'

vpn_gcc () {
  cat ~/.passwd/host | sudo -S ifmetric enp0s31f6 1 2> /dev/null
  nmcli con mod gcc-dev vpn.secrets "password=$(cat ~/.passwd/vpn-gcc-dev)"
  nmcli con up gcc-dev -a
}

