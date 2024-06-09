cd $HOME
sudo apt install xonsh
sudo apt install stow
sudo apt install tmux
sudo apt install neovim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -sS https://starship.rs/install.sh | sh

echo xonsh >> .bashrc

git clone https://github.com/Kdizzle8d8/my-dotfiles.git
cd my-dotfiles
stow .

