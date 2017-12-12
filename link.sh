
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
