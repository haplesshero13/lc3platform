#LC3 Platform

A nice downloader and install script for the LC3 tools required for Dartmouth College COSC 51, Computer Architecture.

Installs the [lc3tools](https://github.com/haplesshero13/lc3tools) and [lcc-lc3 compiler](https://github.com/haplesshero13/lcc-lc3) to `~/.lc3`.

## Installation Instructions


### On Linux or Windows+Cygwin using wget
* Install prerequisites: standard UNIX tools including wget or curl, as well as uname, rm, cp, mkdir, and chmod; gcc, wish, flex, and Git
* At the terminal/shell, run:

```
wget -qO- https://raw.github.com/haplesshero13/lc3platform/master/install.sh | sh -
```

###On Mac OS X using curl
* Install Xcode and the Xcode Developer Tools/Command Line Tools
* Check that you have gcc by typing gcc --version. If you get a message similar to i686-apple-darwin11-llvm-gcc-4.2 (GCC) 4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2336.9.00) then you are all set.
* Open Terminal.app and run:

```
curl https://raw.github.com/haplesshero13/lc3platform/master/install.sh | sh -
```

That's it. Enjoy!
