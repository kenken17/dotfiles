# colours!
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

alias mom='tmux a -t mom'
alias ep_dev="cd ~/Projects/wins-ep-dev"
alias build='npm run build:production'
alias dev='npm run dev'

d_log () {
  if [ -z $1 ]
  then
    ep_dev
    docker-compose logs -f --tail 10
    cd -
  else
    docker logs $1 --follow --details --since=10h --tail 50
  fi
}

d_restart () {
  ep_dev
  bin/devstart.sh restart $1
  cd -
}

d_rebuild () {
  ep_dev
  bin/devstart.sh rebuild $1
  cd -
}

d_stop_shit () {
  docker stop wins_data_lookup_sync
  docker stop wins_selenium_box
}

s_start () {
  npm run theo
  gulp
  npm run build:system
  npm start
}

vpn_gcc () {
  sudo ifmetric wlp1s0 1
  nmcli con mod gcc-dev vpn.secrets "password=$(cat ~/.passwd/vpn-gcc-dev)"
  nmcli con up gcc-dev -a
}

s_pack () {
  npm run build:system
  npm pack
}

alias ssh_automation='ssh wins@172.16.12.200'
