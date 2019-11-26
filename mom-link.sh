#!/bin/sh

OVERWRITE=0


echo ">>> Link mom/.git-templates to ~/.git-templates ..."

if [[ -d ~/.git-templates && $OVERWRITE -eq 0 ]]
then
  echo ">>> Found ~/.git-templates, replace with ~/.git-templates_backup"
  echo
  mv ~/.git-templates ~/.git-templates_backup
else
  rm ~/.git-templates
fi

ln -v -s $(pwd)/mom/.git-templates ~/.git-templates

