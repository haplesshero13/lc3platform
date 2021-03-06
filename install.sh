#!/bin/sh
# LC3 Development Platform install script
# by Avery Yen <haplesshero13@gmail.com>
# May 5, 2012
# Downloads source for lc3tools and the lcc-lc3 compiler, builds, installs, and
#  adds to PATH. Default install directory is at ~/.lc3.
#
# Requires git to run.

set -e

cd
echo "Cloning git repositories into place..."
git clone git://github.com/haplesshero13/lc3tools.git .lc3tools
git clone git://github.com/haplesshero13/lcc-lc3.git .lcc-lc3

echo
echo "Configuring, compiling, and installing lc3tools..."
cd .lc3tools
./configure
make install
make clean
make clear

echo
echo "Configuring, compiling, and installing lcc-lc3..."
cd ../.lcc-lc3
./configure
make install
make clean
make clear
echo "Binaries compiled and installed."

echo "Adding LC3 Platform binaries to PATH environment variable..."
LC3_PATH="$HOME/\.lc3"

if [ `echo "$PATH" | grep "$LC3_PATH"` ]; then
  echo "Path already contains \"$HOME/.lc3\"."
else
  if [ `echo "$SHELL" | grep zsh` ]; then
    echo "# LC3 Tools" >> ~/.zshrc
    echo 'export PATH="$HOME/.lc3:$PATH"' >> ~/.zshrc
    echo "Added $HOME/.lc3 to your PATH in your zshrc."
  fi
  if [ `echo "$SHELL" | grep bash` ]; then
    echo "# LC3 Tools" >> ~/.bashrc
    echo 'export PATH="$HOME/.lc3:$PATH"' >> ~/.bashrc
    echo "Added $HOME/.lc3 to your PATH in your bashrc."
  fi
  echo "(You may have to restart your shell session for this change to take effect.)"
fi

echo "Finished installing the LC3 Development Platform!"
