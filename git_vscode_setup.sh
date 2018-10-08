#!/bin/bash

echo "Installing/Updating VS Code on your system..."
brew doctor
brew update
brew cask install visual-studio-code
brew cask upgrade visual-studio-code
echo
echo
echo "Setting up VS Code as default editor..."
git config --global core.editor Code
echo
echo
echo "Configuring VS Code as default diff tool... "
git config --global diff.tool default-difftool
git config --global difftool.default-difftool.cmd "code --wait --diff \$LOCAL \$REMOTE"
git config --global difftool.prompt false
echo
echo
echo "Configuring VS Code as default merge tool..."
git config --global merge.tool code
git config --global mergetool.code.cmd "code --wait \$MERGED"
git config --global mergetool.prompt false
git config --global mergetool.keepbackup false
echo "DONE."