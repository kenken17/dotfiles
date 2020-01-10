#!/bin/sh

git config --global alias.rh "reset --hard"
git config --global alias.hr "reset --hard"
git config --global alias.cp "cherry-pick"
git config --global alias.st "status -s"
git config --global alias.cl "clone"
git config --global alias.aa "add ."
git config --global alias.cc "commit"
git config --global alias.ca "commit --amend"
git config --global alias.co "checkout"
git config --global alias.br "branch"
git config --global alias.diff "diff --word-diff"
git config --global alias.dc "diff --cached"
git config --global alias.sl "stash list"
git config --global alias.ss "stash save"
git config --global alias.sa "stash apply"
git config --global alias.la "!git config -l | grep alias | cut -c 7-"
git config --global alias.ll 'log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
git config --global alias.ls 'log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=relative'
git config --global alias.l "log --graph --oneline --decorate --all"
git config --global alias.lb "log --graph --oneline --decorate"
git config --global alias.dl "!git ll -1"
git config --global alias.dlc "diff --cached HEAD^"
git config --global alias.f "!git ls-files | grep -i"
git config --global alias.grep "grep -Ii"
git config --global alias.gr "grep -Ii"
git config --global alias.p "git fetch --prune origin '+refs/tags/*:refs/tags/*'"


# For splice.vim merge
git config --global merge.tool vimdiff
git config --global diff.tool vimdiff


# For hooks
# git config --global init.templatedir '~/.git-templates'

