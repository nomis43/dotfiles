sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm $HOME/.zshrc
mkdir -p $HOME/.config/nvim

ln -s `pwd`/zshrc $HOME/.zshrc
ln -s `pwd`/init.vim $HOME/.config/nvim/init.vim


