
# For Vim
VIMVERSION=$(vim --version | head -1 | cut -d ' ' -f 5)
MIN_VIMVERSION="8"

echo ">>> Link .vim to ~/.vim ..."

if [[ -d ~/.vim ]]
then
    echo ">>> Found ~/.vim, replace with ~/.vim_backup"
    echo
    mv ~/.vim ~/.vim_backup
fi

ln -s $(pwd)/.vim ~

echo ">>> Link .vimrc to ~ ..."

if [[ -f ~/.vimrc ]]
then
    echo ">>> Found ~/.vimrc, replace with ~/.vimrc_backup"
    echo
    mv ~/.vimrc ~/.vimrc_backup
fi

ln -s $(pwd)/.vim/.vimrc ~/.vimrc

echo ">>> Link .ctags to ~/.ctags ..."

if [[ -f ~/.ctags ]]
then
    echo ">>> Found ~/.ctags, replace with ~/.ctags_backup"
    echo
    mv ~/.vim ~/.ctags_backup
fi

ln -s $(pwd)/.ctags ~/.ctags


if [[ -f ~/.gitignore_global ]]
then
    echo ">>> Found ~/.gitignore_global, replace with ~/.gitignore_global_backup"
    echo
    mv ~/.vim ~/.gitignore_global_backup
fi

ln -s $(pwd)/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global


if [[ -f ~/.ackrc ]]
then
    echo ">>> Found ~/.ackrc, replace with ~/.ackrc_backup"
    echo
    mv ~/.vim ~/.ackrc_backup
fi

ln -s $(pwd)/.ackrc ~/.ackrc

