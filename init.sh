DIR=`pwd`

echo "Installing Spacemacs"
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
cd ~/.emacs.d
git fetch
git checkout develop

echo "Setting up personal config files"
echo
ln -s $DIR/dotfile ~/.spacemacs
ln -s $DIR/personal-config-layer ~/.emacs.d/private/personal-config

echo "All Done"
