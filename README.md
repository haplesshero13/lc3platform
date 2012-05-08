#LC3 Development Platform

A nice downloader and install script for the LC3 tools required for developing for the LC3 used in Dartmouth College COSC 51, Computer Architecture.

Installs the [lc3tools](https://github.com/haplesshero13/lc3tools) and [lcc-lc3 compiler](https://github.com/haplesshero13/lcc-lc3) to `~/.lc3`.

## Installation Instructions


### On Linux or Windows+Cygwin using wget
* Install prerequisites: standard UNIX tools including wget or curl, as well as uname, rm, cp, mkdir, and chmod; gcc, wish, flex, and Git
* At the terminal/shell, run:

```
wget -qO- https://raw.github.com/haplesshero13/lc3platform/master/install.sh | sh -
```

###On Mac OS X using curl
####Check if you already have Xcode (Any Mac OS X)
If you already have Xcode, check that you have gcc.

* Check that you have Xcode and gcc by typing `gcc --version`. If you get a message similar to the following, then you are all set.

```
i686-apple-darwin11-llvm-gcc-4.2 (GCC) 4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2336.9.00)
```

* Skip to "Get the LC3 Developer Platform" if you already have gcc. If not, install the Command Line Tools for your version of Xcode. Or else, get Xcode 4.3.

####Get Xcode 4.3 (Mac OS X 10.6+)
If you don't have Xcode yet, then follow these instructions.

* Install Xcode 4.3 (free with Apple/iTunes ID) using the Apple App Store (warning: this is a huge download; you may wish to prepare some popcorn) and download the Command Line Tools in addition: go to Xcode&rarr;Preferences&rarr;Downloads, find Command Line Tools, and click install.
* Run `sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer` and enter your password (You won't see anything on the screen when you type your password. This is a privacy feature.)
* Check that you have Xcode and gcc by typing `gcc --version`. If you get a message similar to the following, then you are all set.

```
i686-apple-darwin11-llvm-gcc-4.2 (GCC) 4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2336.9.00)
```

####Get the LC3 Developer Platform
Open Terminal.app and run:

```
curl https://raw.github.com/haplesshero13/lc3platform/master/install.sh | sh -
```

###Start Playing with the LC3

If you got the message: "Finished installing the LC3 Development Platform!" then you are good to go. (If not, see what the last error was before the script quit.)

Now, restart your shell and try to run `lcc` and `lc3sim-tk`. You should get a help message with the `lcc` command and you should get an LC3 simulation window with `lc3sim-tk`.

If it doesn't work, make sure you either close the Terminal and open it again, or log out and log in again. Check to see if you have `$HOME/.lc3` in your path by running `echo $PATH`. (You won't see "`$HOME`"; it will be expanded to whatever your home directory is.)

That's it. Enjoy!

...assuming you trust the install script, that is! =]

If not, go ahead and look at the build and install instructions on each of the subcomponents.

## Details
This install script will `git clone` [lc3tools](https://github.com/haplesshero13/lc3tools) and [lcc-lc3 compiler](https://github.com/haplesshero13/lcc-lc3) to `~/.lc3tools` and `~/.lcc-lc3`. Then, it will `cd` into each directory and run `./configure` and `make install` with the directory `~/.lc3` as the install target directory for both.

The `lc3tools` includes a simulator for the LC3, as well as an assembler and a basic OS. It is originally by Steven S. Lumetta.

The `lcc-lc3` C compiler is an updated version of LCC for LC3, originally by Ajay Ladsaria and Sanjay J. Patel, that includes Prof. Sean Smith's `no-sse` fix, and that installs to `~/.lc3` by default. More details are at the [lcc-lc3 compiler GitHub page](https://github.com/haplesshero13/lcc-lc3).

Finally, the script checks if `~/.lc3` is in your path. If it isn't, and you use bash or zsh, it will add the line `export PATH="$HOME/.lc3:$PATH"` to your `.bash_profile` or your `.zshrc`, depending on which shell it detects. If you use any other shell, you probably know how to add `~/.lc3` to your path already, but I don't. ;)