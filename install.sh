#!/bin/sh

set -e

echo "Cloning git repositories into place:"
git clone git://github.com/haplesshero13/lc3tools.git
git clone git://github.com/haplesshero13/lcc-lc3.git

echo
echo "Now configuring, compiling, and installing lc3tools..."
cd lc3tools
./configure
make install
make clean
make clear

echo
echo "Now configuring, compiling, and installing lcc-lc3..."
cd ../lcc-lc3
./configure
make install
make clean
make clear

cd ..
rm -rf lc3tools
rm -rf lcc-lc3

echo
echo "All done. Now you can add $HOME/.lc3 to your PATH."
