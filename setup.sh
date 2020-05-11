ln -fs $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -fs $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -fs $HOME/dotfiles/.bash_profile $HOME/.profile

vim +PluginInstall +qall
