#!bin/sh

c_online () {
  tmux new-window -n '_online'
  tmux send-keys -t '_online' 'cd ~/Projects/wins-ep-online' c-m
  tmux send-keys -t '_online' 'vim' c-m
}

c_document () {
  tmux new-window -n '_document'
  tmux send-keys -t '_document' 'cd ~/Projects/wins-common-document' c-m
  tmux send-keys -t '_document' 'vim' c-m
}

c_quicklink () {
  tmux new-window -n '_quicklink'
  tmux send-keys -t '_quicklink' 'cd ~/Projects/wins-quicklink' c-m
  tmux send-keys -t '_quicklink' 'vim' c-m
}

c_cli () {
  tmux new-window -n '_cli'
  tmux send-keys -t '_cli' 'cd ~/Projects/wins-dev-tools' c-m
  tmux send-keys -t '_cli' 'vim' c-m
}

c_iam () {
  tmux new-window -n '_iam'
  tmux send-keys -t '_iam' 'cd ~/Projects/wins-common-iam' c-m
  tmux send-keys -t '_iam' 'vim' c-m
}

c_auth () {
  tmux new-window -n '_auth'
  tmux send-keys -t '_auth' 'cd ~/Projects/wins-auth' c-m
  tmux send-keys -t '_auth' 'vim' c-m
}

c_application () {
  tmux new-window -n '_application'
  tmux send-keys -t '_application' 'cd ~/Projects/wins-ep-application' c-m
  tmux send-keys -t '_application' 'vim' c-m
}

c_jauto () {
  tmux new-window -n 'automation'
  tmux send-keys -t 'automation' 'cd ~/Projects/wins-ep-jautomation' c-m
  tmux send-keys -t 'automation' 'vim' c-m
}
