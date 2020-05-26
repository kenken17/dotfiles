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

_d_re_completions()
{
  SERVICE[0]="wins_common_document"
  SERVICE[1]="wins_common_foreigner"
  SERVICE[2]="wins_common_iam"
  SERVICE[3]="wins_common_lookup"
  SERVICE[4]="wins_data_lookup_sync"
  SERVICE[5]="wins_ep_application"
  SERVICE[6]="wins_ep_company"
  SERVICE[7]="wins_ep_draft"
  SERVICE[8]="wins_ep_internal_user"
  SERVICE[9]="wins_ep_intranet_utility"
  SERVICE[10]="wins_ep_message_handler"
  SERVICE[11]="wins_ep_nginx"
  SERVICE[12]="wins_ep_online"
  SERVICE[13]="wins_ep_oracle"
  SERVICE[14]="wins_ep_payment"
  SERVICE[15]="wins_ep_payment_braintree"
  SERVICE[16]="wins_ep_payment_report"
  SERVICE[17]="wins_ep_workpass"
  SERVICE[18]="wins_external_service"
  SERVICE[19]="wins_intranet_service"
  SERVICE[20]="wins_mock_csp"
  SERVICE[21]="wins_mock_service"
  SERVICE[22]="wins_mock_uam"
  SERVICE[23]="wins_rabbitmq"
  SERVICE[24]="wins_redis"
  SERVICE[25]="wins_selenium_box"

  COMPREPLY=($(compgen -W '${SERVICE[@]}' "${COMP_WORDS[1]}"))
}

alias _rebuild=d_rebuild
alias _restart=d_restart
alias _log=d_log
alias _bash=d_bash

complete -F _d_re_completions _rebuild
complete -F _d_re_completions _restart
complete -F _d_re_completions _log
complete -F _d_re_completions _bash
complete -F _d_re_completions d_rebuild
complete -F _d_re_completions d_restart
complete -F _d_re_completions d_log
complete -F _d_re_completions d_bash

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


