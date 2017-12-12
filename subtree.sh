
# For Vim plugin manager
echo ">>> Add the Vundle.vim plugin manager as subtree ..."
git subtree add --prefix .vim/bundle/Vundle.vim https://github.com/VundleVim/Vundle.vim.git master --squash

echo ">>> Pull the latest repo ..."
git subtree pull --prefix .vim/bundle/Vundle.vim https://github.com/VundleVim/Vundle.vim.git master --squash