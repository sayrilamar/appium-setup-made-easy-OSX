#!/bin/bash
echo "### Installing ZSH... ###"
brew install zsh
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
