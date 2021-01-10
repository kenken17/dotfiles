#!/bin/sh

OVERWRITE=0

if [ ! $DOTFILE_INIT ]
then
  touch ~/.bashrc

  echo "" >> ~/.bashrc
  echo "# Personalise bash profile" >> ~/.bashrc
  echo "export DOTFILE_INIT=1" >> ~/.bashrc
  echo "source ~/dotfiles/parrot/.bash_profile" >> ~/.bashrc
  echo "source ~/dotfiles/parrot/.alias" >> ~/.bashrc
  echo "source ~/Projects/frog-hacking/.alias" >> ~/.bashrc

  echo "Patch .bashrc done. Please restart session."
else
  echo "No patch."
fi
