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



echo
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



echo
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



echo
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



echo
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



echo
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



# echo
# echo ">>> Link init.vim to ~/.config/nvim/init.vim ..."
#
# if [[ -f ~/.config/nvim/init.vim && $OVERWRITE -eq 0 ]]
# then
#   echo ">>> Found ~/.config/nvim/init.vim, replace with ~/.config/nvmim/init.vim_backup"
#   echo
#   mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim_backup
# else
#   rm ~/.config/nvim/init.vim
# fi
#
# ln -v -s $(pwd)/.vim/init.vim ~/.config/nvim/init.vim



echo
echo ">>> Link coc-settings.json to ~/.config/vim/coc-settings.json ..."

mkdir -p ~/.config/vim

if [[ -f ~/.config/vim/coc-settings.json && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.config/vim/coc-settings.json, replace with ~/.config/vim/coc-settings.json_backup"
    echo
    mv ~/.config/vim/coc-settings.json ~/.config/vim/coc-settings.json_backup
else
    rm ~/.config/vim/coc-settings.json
fi

ln -v -s $(pwd)/.vim/coc-settings.json ~/.config/vim/coc-settings.json



# echo
# echo ">>> Link .bash_prompt to ~/.bash_prompt ..."
#
# if [[ -f ~/.bash_profile && $OVERWRITE -eq 0 ]]
# then
#   echo ">>> Found ~/.bash_prompt, replace with ~/.bash_prompt_backup"
#   echo
#   mv ~/.bash_prompt ~/.bash_prompt_backup
# else
#   rm ~/.bash_prompt
# fi
#
# ln -v -s $(pwd)/.bash_prompt ~/.bash_prompt
#
#
#
# echo
# echo ">>> Link .bash_profile to ~/.bash_profile ..."
#
# if [[ -f ~/.bash_profile && $OVERWRITE -eq 0 ]]
# then
#   echo ">>> Found ~/.bash_profile, replace with ~/.bash_profile_backup"
#   echo
#   mv ~/.bash_profile ~/.bash_profile_backup
# else
#   rm ~/.bash_profile
# fi
#
# ln -v -s $(pwd)/.bash_profile ~/.bash_profile


