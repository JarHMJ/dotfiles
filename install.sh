#!/usr/bin/env bash

###########################
# This script installs the dotfiles and runs all other system configuration scripts
# @author jarhmj 
###########################

rm -rf ~/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

rm -rf ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# 创建配置软链
rm ~/.gitconfig
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

rm ~/.zshrc
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

rm ~/.vimrc
ln -sf ~/.dotfiles/vim/.vimrc ~/.vimrc
