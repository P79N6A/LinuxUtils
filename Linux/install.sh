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

# install bashrc
cp bashrc ~/.bashrc
echo source ~/.bashrc >> ~/.bash_profile
source ~/.bashrc

cp gitconfig ~/.gitconfig


#install Vundle
if [ -e ~/.vim/bundle/Vundle.vim ]; then
    echo 'Vundle already exists!'
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# install YouCompleteMe 
cd ~/.vim/bundle/YouCompleteMe
sudo $install_cmd install cmake
sudo ./install.sh
cd $dir


