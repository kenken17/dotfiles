#!/bin/sh

OVERWRITE=0

# Checking for options
while getopts 'o' OPTION; do
    case $OPTION in
        o )
            OVERWRITE=1
            ;;
        ? )
            echo "Usage: $(basename $0) [-o]"
            exit 1
            ;;
    esac
done
shift "$(($OPTIND -1))"



echo ">>> Link .vim to ~/.vim ..."

if [[ -d ~/.vim && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.vim, replace with ~/.vim_backup"
    echo
    mv ~/.vim ~/.vim_backup
else
    rm ~/.vim
fi

ln -v -s $(pwd)/.vim ~



echo ">>> Link .vimrc to ~ ..."

if [[ -f ~/.vimrc && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.vimrc, replace with ~/.vimrc_backup"
    echo
    mv ~/.vimrc ~/.vimrc_backup
else
    rm ~/.vimrc
fi

ln -v -s $(pwd)/.vim/.vimrc ~/.vimrc



echo ">>> Link .ctags to ~/.ctags ..."

if [[ -f ~/.ctags && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.ctags, replace with ~/.ctags_backup"
    echo
    mv ~/.ctags ~/.ctags_backup
else
    rm ~/.ctags
fi

ln -v -s $(pwd)/.ctags ~/.ctags



echo ">>> Link .gitignore_global to ~/.gitignore_global ..."

if [[ -f ~/.gitignore_global && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.gitignore_global, replace with ~/.gitignore_global_backup"
    echo
    mv ~/.gitignore_global ~/.gitignore_global_backup
else
    rm ~/.gitignore_global
fi

ln -v -s $(pwd)/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global




echo ">>> Link .ackrc to ~/.ackrc ..."

if [[ -f ~/.ackrc && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.ackrc, replace with ~/.ackrc_backup"
    echo
    mv ~/.ackrc ~/.ackrc_backup
else
    rm ~/.ackrc
fi

ln -v -s $(pwd)/.ackrc ~/.ackrc



echo ">>> Link .tmux.conf.local to ~/.tmux.conf.local ..."

if [[ -f ~/.tmux.conf.local && $OVERWRITE -eq 0 ]]
then
  echo ">>> Found ~/.tmux.conf.local, replace with ~/.tmux.conf.local_backup"
  echo
  mv ~/.tmux.conf.local ~/.tmux.conf.local_backup
else
  rm ~/.tmux.conf.local
fi

ln -v -s $(pwd)/.tmux.conf.local ~/.tmux.conf.local



echo ">>> Link init.vim to ~/.config/nvim/init.vim ..."

if [[ -f ~/.config/nvim/init.vim && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.config/nvim/init.vim, replace with ~/.config/nvmim/init.vim_backup"
    echo
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim_backup
else
    rm ~/.config/nvim/init.vim
fi

ln -v -s $(pwd)/.vim/init.vim ~/.config/nvim/init.vim



echo ">>> Link .git-templates to ~/.git-templates ..."

if [[ -d ~/.git-templates && $OVERWRITE -eq 0 ]]
then
  echo ">>> Found ~/.git-templates, replace with ~/.git-templates_backup"
  echo
  mv ~/.git-templates ~/.git-templates_backup
else
  rm ~/.git-templates
fi

ln -v -s $(pwd)/.git-templates ~/.git-templates

