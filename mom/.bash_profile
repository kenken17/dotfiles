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
  docker stop wins_selenium_box
}

d_stop_payment () {
  # docker stop wins_ep_payment
  docker stop wins_ep_payment_braintree
  docker stop wins_ep_payment_report
}

d_start_payment () {
  # d_restart wins_ep_payment
  d_restart wins_ep_payment_braintree
  d_restart wins_ep_payment_report
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

  COMPREPLY=($(compgen -W '${SERVICE[@]}' "${COMP_WORDS[1]}"))
}

complete -F _d_re_completions d_rebuild
complete -F _d_re_completions d_restart
complete -F _d_re_completions d_log
complete -F _d_re_completions d_bash

s_start () {
  npm run theo
  gulp
  npm run init
  npm run build:system
  npm start
}

vpn_gcc () {
  cat ~/.passwd/host | sudo -S ifmetric wlp1s0 1 2> /dev/null
  nmcli con mod gcc-dev vpn.secrets "password=$(cat ~/.passwd/vpn-gcc-dev)"
  nmcli con up gcc-dev -a
}

s_pack () {
  npm run build:system
  npm pack
}

alias ssh_automation='ssh wins@172.16.12.200'

g_track () {
  if [ -z $1 ]; then
    echo "No branch?"
  else
    git co -b $1 --track origin/$1
    git pull
  fi
}

act () {
  npmrc default
  vim +PlugUpdate +1sleep +CocUpdate
  npmrc gcc
}

mr () {
  echo -e "\nOpen MR: "
  wdt mr-by-me

  echo -e "\nPending Review:"
  wdt mr-for-me
}

upd () {
  wdt repos-upd

  mr
}

pub () {
  wdt repo-pub
}

build_form () {
  if [ -z "$1" ]
  then
    wdt repos-rep 'npm run build:production' --type=form
  else
    wdt repos-rep 'npm run build:production' --type=form --only="$1"
  fi
}

git config --global diff.tool vim
git config --global difftool.path vim
git config --global difftool.vim.cmd 'vim -f -c "Gdiffsplit!" "$MERGED"'

source ~/dotfiles/mom/windows.sh
