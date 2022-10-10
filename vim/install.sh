#!/usr/bin/zsh

if [ -d "$HOME/.vim/bundle" ]
then
	echo "vundle already installed"
else
	echo "--- vundle is a prerequisite for this .vimrc ---"
	echo "--- please install Vundle ---"
	echo "https://github.com/VundleVim/Vundle.vim#quick-start"
fi

echo "copying .vimrc ... \n"

ln vim/.vimrc $HOME/.vimrc

echo "linked .vimrc"
echo "⚠️ :PluginInstall"

# run :PluginInstall non interactively
vim +'PlugInstall --sync' +qa

echo ":source ..."

# build coc.nvim
cd $HOME/.vim/bundle/coc.nvim && npm i && npm run build