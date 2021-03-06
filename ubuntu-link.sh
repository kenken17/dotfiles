#!/bin/sh

OVERWRITE=0

if [ ! $DOTFILE_INIT ]
then
  touch ~/.bashrc

  echo "" >> ~/.bashrc
  echo "# Personalise bash profile" >> ~/.bashrc
  echo "export DOTFILE_INIT=1" >> ~/.bashrc
  echo "source ~/dotfiles/.bash_profile" >> ~/.bashrc
  echo "source ~/dotfiles/ubuntu/.bash_profile" >> ~/.bashrc

  echo "Patch .bashrc done. Please restart session."
else
  echo "No patch."
fi
