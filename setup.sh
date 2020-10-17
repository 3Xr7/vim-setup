#! /bin/bash

echo "---------------------------"
echo "      Install Theme"
echo "---------------------------"
scripts/install_theme.sh

echo "---------------------------"
echo "     Install Plugins"
echo "---------------------------"
scripts/install_plugins.sh

echo "---------------------------"
echo "      Configure VIM"
echo "---------------------------"

echo "Copying vimrc..."
cp config/.vimrc ~/.vimrc

echo "Setup Complete!"
