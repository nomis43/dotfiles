sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

rm $HOME/.zshrc
mkdir -p $HOME/.config/nvim

ln -s `pwd`/zshrc $HOME/.zshrc
ln -s `pwd`/init.vim $HOME/.config/nvim/init.vim


