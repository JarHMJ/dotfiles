#!/usr/bin/env bash

###########################
# This script installs the dotfiles and runs all other system configuration scripts
# @author jarhmj 
###########################

#rm -rf ~/.oh-my-zsh
#git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
#chsh -s /bin/zsh
#
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 配置vim
rm -rf ~/.vim
ln -sf ~/.dotfiles/vim/.vimrc ~/.vimrc

# 创建配置软链
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc


ln -sf ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/.dotfiles/fish/fishfile ~/.config/fish/fishfile
