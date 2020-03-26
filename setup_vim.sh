./setup_vim.sh
mkdir -p .vim/bundle
cd .vim
git clone https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim
mkdir colors
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim colors/
