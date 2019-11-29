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

_doFetch () {
  echo ""
  echo -e "${GREEN}$1...${NOCOLOR}"
  cd $1 && ft

  _pullMaster

  cd -
}

_pullMaster () {
  IS_MASTER=$(git rev-parse --abbrev-ref HEAD)

  if [[ $IS_MASTER -eq 'master' ]]
  then
    git pull
  else
    echo -e "${RED}Not in master${NOCOLOR}"
  fi
}

fetch_all () {
  for i in ~/Projects/* ; do
    if [ -d "$i" ]; then
      _doFetch "$i"
    fi
  done
}

d_stop_payment () {
  docker stop wins_ep_payment
  docker stop wins_ep_payment_braintree
  docker stop wins_ep_payment_report
}

d_start_payment () {
  d_restart wins_ep_payment
  d_restart wins_ep_payment_braintree
  d_restart wins_ep_payment_report
}

d_stop_shit () {
  docker stop wins_data_lookup_sync
  docker stop wins_selenium_box
}

d_stop_auth () {
  docker stop wins_ep_company
  docker stop wins_common_foreigner
  docker stop wins_mock_uam
  docker stop wins_common_iam
}

d_start_auth () {
  d_restart wins_ep_company
  d_restart wins_common_foreigner
  d_restart wins_mock_uam
  d_restart wins_common_iam
}

_d_re_completions()
{
  SERVICE[0]="wins_ep_oracle"
  SERVICE[1]="wins_ep_online"
  SERVICE[2]="wins_ep_payment"
  SERVICE[3]="wins_ep_payment_braintree"
  SERVICE[4]="wins_common_iam"
  SERVICE[5]="wins_mock_csp"
  SERVICE[6]="wins_ep_company"
  SERVICE[7]="wins_common_lookup"
  SERVICE[8]="wins_redis"
  SERVICE[9]="wins_selenium_box"
  SERVICE[10]="wins_ep_nginx"
  SERVICE[11]="wins_data_lookup_sync"
  SERVICE[12]="wins_external_service"
  SERVICE[13]="wins_ep_message_handler"
  SERVICE[14]="wins_rabbitmq"
  SERVICE[15]="wins_ep_application"
  SERVICE[16]="wins_common_document"
  SERVICE[17]="wins_mock_service"
  SERVICE[18]="wins_common_foreigner"
  SERVICE[19]="wins_ep_payment_report"
  SERVICE[20]="wins_intranet_service"
  SERVICE[21]="wins_ep_draft"
  SERVICE[22]="wins_ep_intranet_utility"
  SERVICE[23]="wins_mock_uam"
  SERVICE[24]="wins_ep_workpass"
  SERVICE[25]="wins_ep_internal_user"

  COMPREPLY=($(compgen -W '${SERVICE[@]}' "${COMP_WORDS[1]}"))
}

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

s_pack () {
  npm run build:system
  npm pack
}

alias o_lookup="cd ~/Projects/wins-common-lookup && vim"
alias o_company="cd ~/Projects/wins-ep-company && vim"
alias o_foreigner="cd ~/Projects/wins-common-foreigner && vim"
alias o_application="cd ~/Projects/wins-ep-application && vim"
alias o_online="cd ~/Projects/wins-ep-online && vim"
alias o_dev="cd ~/Projects/wins-ep-dev && vim"
alias o_auth="cd ~/Projects/wins-auth && vim"
alias o_csp="cd ~/Projects/wins-mock-csp && vim"
alias o_iam="cd ~/Projects/wins-common-iam && vim"

