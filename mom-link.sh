#!/bin/sh

OVERWRITE=0

if [ ! $DOTFILE_INIT ]
then
  touch ~/.bashrc

  echo "\n# Personalise bash profile" >> ~/.bashrc
  echo "export DOTFILE_INIT=1" >> ~/.bashrc
  echo "source ~/dotfiles/.bash_profile" >> ~/.bashrc
  echo "source ~/dotfiles/mom/.bash_profile" >> ~/.bashrc

  echo "Patch .bashrc done. Please restart session."
else
  echo "No patch."
fi

# echo ">>> Link mom/.git-templates to ~/.git-templates ..."
#
# if [[ -d ~/.git-templates && $OVERWRITE -eq 0 ]]
# then
#   echo ">>> Found ~/.git-templates, replace with ~/.git-templates_backup"
#   echo
#   mv ~/.git-templates ~/.git-templates_backup
# else
#   rm ~/.git-templates
# fi
#
# ln -v -s $(pwd)/mom/.git-templates ~/.git-templates

