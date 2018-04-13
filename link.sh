
# For Vim
VIMVERSION=$(vim --version | head -1 | cut -d ' ' -f 5)
MIN_VIMVERSION="8"
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

ln -s $(pwd)/.vim ~

echo ">>> Link .vimrc to ~ ..."

if [[ -f ~/.vimrc && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.vimrc, replace with ~/.vimrc_backup"
    echo
    mv ~/.vimrc ~/.vimrc_backup
else
    rm ~/.vimrc
fi

ln -s $(pwd)/.vim/.vimrc ~/.vimrc

echo ">>> Link .ctags to ~/.ctags ..."

if [[ -f ~/.ctags && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.ctags, replace with ~/.ctags_backup"
    echo
    mv ~/.ctags ~/.ctags_backup
else
    rm ~/.ctags
fi

ln -s $(pwd)/.ctags ~/.ctags


echo ">>> Link .gitignore_global to ~/.gitignore_global ..."

if [[ -f ~/.gitignore_global && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.gitignore_global, replace with ~/.gitignore_global_backup"
    echo
    mv ~/.gitignore_global ~/.gitignore_global_backup
else
    rm ~/.gitignore_global
fi

ln -s $(pwd)/.gitignore_global ~/.gitignore_global
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

ln -s $(pwd)/.ackrc ~/.ackrc


echo ">>> Link .ackrc to ~/.tmux.conf ..."

if [[ -f ~/.tmux.conf && $OVERWRITE -eq 0 ]]
then
    echo ">>> Found ~/.tmux.conf, replace with ~/.tmux.conf_backup"
    echo
    mv ~/.tmux.conf ~/.tmux.conf_backup
else
    rm ~/.tmux.conf
fi

ln -s $(pwd)/.tmux.conf ~/.tmux.conf
