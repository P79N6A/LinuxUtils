dir=$(pwd)     # current directory
install_cmd="" # package manager

if [[ $(grep Ubuntu /etc/issue) != "" ]]; then
    install_cmd="apt-get"
elif [[ $(grep CentOS /etc/issue) != "" ]]; then
    install_cmd="yum"
else
    echo 'Error! Unrecognized OS.'
    exit 1
fi

# install .vimrc
cp vimrc ~/.vimrc

#install gitconfig
cp gitconfig ~/.gitconfig

#install Vundle
if [ -e ~/.vim/bundle/Vundle.vim ]; then
    echo 'Vundle already exists!'
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

# install YouCompleteMe 
cd ~/.vim/bundle/YouCompleteMe
sudo $install_cmd install cmake
# --clang-completer  C/C++
# --gocode-completer  Go language
# --tern-completer  JavaScript (need nodejs & npm installed)
# --omnisharp-completer  C#
sudo ./install.sh # --clang-completer --system-libclang --system-boost --gocode-completer --tern-completer
cd $dir


