###### VIM ######
export EDITOR='vim'

alias vim="vim"
alias vi="vim"
alias im='vim'
alias cim='vim'

# Npm
alias unit='npm run test'
alias coverage='npm run test:dev-coverage'
alias lint='npx eslint'
alias serve='python -m SimpleHTTPServer '

# Work flow
alias mom='tmux a -t mom || tmux new -s mom'
alias ep_dev="cd ~/Projects/wins-ep-dev"
alias build='npm run build:production'
alias dev='npm run dev'
alias pub='wdt repo-pub'

jauto() {
  if [ -z $1 ]; then
    mvn clean install -DsuiteXmlFile=testng_EP.xml -Dtestname=smoketest -Dtest.ubuntu=true -Dtest.auto.driver.chrome.headless=true -Dcucumber.filter.tags=@ken
  else
    if [ -z $2 ]; then
      mvn clean install -DsuiteXmlFile=testng_EP.xml -Dtestname=smoketest -Dtest.ubuntu=true -Dtest.auto.driver.chrome.headless=true -Dcucumber.filter.tags=$1
    else
      mvn clean install -DsuiteXmlFile=testng_EP.xml -Dtestname=smoketest -Dtest.ubuntu=true -Dtest.auto.driver.chrome.headless=$2 -Dcucumber.filter.tags=$1
    fi
  fi
}

#==============================================================================
# Docker Functions
#==============================================================================

d_log () {
  if [ -z $1 ]
  then
    file=$(git rev-parse --show-toplevel)
    service=$(cat $file/package.json | grep -oP "\"service\":\s\"\S*\"" | cut -d'"' -f4)

    docker logs $service --follow --since=10h --tail 50
  else
    ep_dev
    docker-compose logs -f --tail 20
    cd -
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

d_redis () {
  docker exec -it wins_redis bash -c "redis-cli -a 721aa1f3823493996b828dd82ff31403b4"
}

d_stop_payment () {
  docker pause wins_ep_payment_braintree
  docker pause wins_ep_payment_report
}

d_start_payment () {
  docker unpause wins_ep_payment_braintree
  docker unpause wins_ep_payment_report
}

d_stop_r3 () {
  docker pause wins_ep_stvp
  docker pause cancellation_mock
}

d_start_r3 () {
  docker unpause wins_ep_stvp
  docker unpause cancellation_mock
}

d_stop_rabbit () {
  docker pause wins_rabbitmq
}

d_start_rabbit () {
  docker unpause wins_rabbitmq
}

d_stop_lookup () {
  docker pause wins_data_lookup_sync
}

d_start_lookup () {
  docker unpause wins_data_lookup_sync
}

d_stop_auto () {
  docker stop wins_selenium_box
}

d_stop_shit () {
  d_stop_auto
  d_stop_r3
  d_stop_payment
  d_stop_rabbit
  d_stop_lookup
}

d_start_shit () {
  d_start_r3
  d_start_payment
  d_start_rabbit
  d_start_lookup
}

d_stop_oracle () {
  docker stop wins_ep_oracle
  docker system prune --volumes --force
  ep_dev
  cd oracle/mv-dump && curl -o WINIDEVAV2_TESTMV_dmp.zip http://toolsvm.wins.momdev.gcc.gov.sg/winsdev/WINIDEVAV2_TESTMV_dmp.zip
  ep_dev
  d_rebuild wins_ep_oracle
  d_log wins_ep_oracle
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
  SERVICE[26]="sonarqube"
  SERVICE[27]="wins_ep_stvp"
  SERVICE[28]="cancellation_mock"
  SERVICE[28]="wins_common_uam"

  COMPREPLY=($(compgen -W '${SERVICE[@]}' "${COMP_WORDS[1]}"))
}

complete -F _d_re_completions d_rebuild
complete -F _d_re_completions d_restart
complete -F _d_re_completions d_log
complete -F _d_re_completions d_bash

#==============================================================================
# UI Functions
#==============================================================================

s_start () {
  npm run theo
  gulp
  npm run init
  npm run build:system
  npm start
}

s_pack () {
  npm run build:system
  npm pack
}

build_form () {
  if [ -z "$1" ]
  then
    wdt repos-rep 'npm run build:production' --type=form
  else
    wdt repos-rep 'npm run build:production' --type=form --only="$1"
  fi
}

#==============================================================================
# Git Functions
#==============================================================================

git config --global diff.tool vim
git config --global difftool.path vim
git config --global difftool.vim.cmd 'vim -f -c "Gdiffsplit!" "$MERGED"'

g_track () {
  if [ -z $1 ]; then
    echo "No branch?"
  else
    git co -b $1 --track origin/$1
    git pull
  fi
}

g_feature () {
  if [ -z $1 ]; then
    echo "No branch?"
  else
    git co -b $1
    git push --set-upstream origin $1
  fi
}

c_change () {
  wdt repos-rep 'git st' -p | grep -E "[MAD]|\?\?"
}

#==============================================================================
# Workflow Functions
#==============================================================================

act () {
  npmrc default
  vim +PlugUpdate +1sleep +CocUpdate
  npmrc gcc
}

mr () {
  echo -e "\nOpen MR: "
  wdt mr-by-me

  echo -e "\n==============================================================================="
  echo -e "\nPending Review:"
  wdt mr-for-me
}

upd () {
  wdt repos-upd

  mr
}

vpn_gcc () {
  cat ~/.passwd/host | sudo -S ifmetric wlp1s0 1 2> /dev/null
  nmcli con mod gcc-dev vpn.secrets "password=$(cat ~/.passwd/vpn-gcc-dev)"
  nmcli con up gcc-dev -a
}

start_the_day () {
  act
  upd
  d_rebuild all-no-db
  d_stop_oracle
}

source ~/dotfiles/mom/windows.sh
