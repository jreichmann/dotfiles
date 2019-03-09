#!/bin/bash

# Install packages which are frequently used by me

if [[ $(command -v dnf) == 0 ]]; then
	sudo -i dnf install tmux git gnupg2 openssh
elif
	sudo pacman -S tmux git gnupg openssh

# Set up tmux
ln -s ./tmux/tmux.conf ~/.tmux.conf
# Get the tmux-plugin-manager
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# Set up redshift
ln -s ./redshift/redshift.conf ~/.config/redshift/redshift.conf

# Set up gnupg things
mkdir -p ~/.gnupg
ln -s ./gnupg/gpg.conf ~/.gnupg/gpg.conf
ln -s ./gnupg/gpg-agent.conf ~/.gnupg/gpg-agent.conf
ln -s ./gnupg/sshcontrol ~/.gnupg/sshcontrol
ln -s ./gnupg/gnupg_agent ~/.gnupg/gnupg_agent
chmod u+x ~/.gnupg/gnupg_agent

git config --global gpg.program gpg2
git config --global user.name jreichmann
git config --global user.email johanna.reichmann@delta-industries.de
git config --global user.signingkey 03624C433676E465


