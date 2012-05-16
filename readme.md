#LC3 Development Platform

A nice downloader and install script for the LC3 tools required for developing for the LC3 used in Dartmouth College COSC 51, Computer Architecture.

Installs the [lc3tools](https://github.com/haplesshero13/lc3tools) and [lcc-lc3 compiler](https://github.com/haplesshero13/lcc-lc3) to `~/.lc3`.

## Installation Instructions
Note: if an instruction is preceded by a dollar sign and a space ($ ), it means "type this into a terminal and press return, but omit the dollar sign and space." Example: `$ ls` means type "ls" at a terminal/shell and hit return.

### On Linux 32-bit (and possibly Windows+Cygwin) using wget
* Install prerequisites: standard UNIX tools should come with Linux and possibly Cygwin including uname, rm, cp, mkdir, and chmod.
* Then, install gcc, wish, flex, and git, and additional libraries. On a modern Ubuntu system, this looks like:

```
$ sudo apt-get update
$ sudo apt-get install git gcc wget tk8.5 flex libncurses5-dev libreadline6-dev
```
* If you have lots of trouble using Cygwin on Windows, you may consider Linux in a VirtualBox or dual booting with Windows. It's free!
* At the terminal/shell, run:

```
$ wget -qO- https://raw.github.com/haplesshero13/lc3platform/master/install.sh | sh -
```

###On Mac OS X using curl
The only prerequisite you need to install on Mac OS X is gcc. The complication arises because Apple is trying to move away from gcc in their latest Mac OS and Xcode. But there is still hope!

####Check if you already have gcc (Any Mac OS X)

* Check that you have Xcode and gcc by typing `gcc --version`. If you get a message similar to the following, then you are all set.

```
i686-apple-darwin11-llvm-gcc-4.2 (GCC) 4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2336.9.00)
```

* Skip to [Get the LC3 Developer Platform](#get-the-lc3-developer-platform) if you already have gcc. If not, you can try to install the Command Line Tools for your version of Xcode. Or, you can get Xcode 4.3.

####Get Xcode 4.3 (Mac OS X 10.6+)
If you don't have Xcode yet, then follow these instructions.

* Install Xcode 4.3 (free with Apple/iTunes ID) using the Apple App Store (warning: this is a huge download; you may wish to prepare some popcorn) and download the Command Line Tools in addition: go to Xcode&rarr;Preferences&rarr;Downloads, find Command Line Tools, and click install.
* Run `$ sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer` and enter your password (You won't see anything on the screen when you type your password. This is a privacy feature.) (You can skip this step if you already have old Xcode or GCC. Check using `gcc --version` like below.)
* Check that you have gcc by typing `$ gcc --version`. If you get a message similar to the following, then you are all set.

```
i686-apple-darwin11-llvm-gcc-4.2 (GCC) 4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2336.9.00)
```

####Get the LC3 Developer Platform
Open Terminal.app and run:

```
$ curl https://raw.github.com/haplesshero13/lc3platform/master/install.sh | sh -
```

###Start Playing with the LC3

If you got the message: "Finished installing the LC3 Development Platform!" then you are good to go. (If not, see what the last error was before the script quit.)

Now, restart your shell and try to run `$ lcc` and `$ lc3sim-tk`. You should get a help message with the `lcc` command and you should get an LC3 simulation window with `lc3sim-tk`.

If it doesn't work, make sure you either close the Terminal and open it again, or log out and log in again. Check to see if you have `$HOME/.lc3` in your path by running `echo $PATH`. (You won't see "`$HOME`"; it will be expanded to whatever your home directory is.)

That's it. Enjoy!

...assuming you trust the install script, that is! =]

If not, go ahead and look at the build and install instructions on each of the subcomponents.

## Details
This install script will `git clone` [lc3tools](https://github.com/haplesshero13/lc3tools) and [lcc-lc3 compiler](https://github.com/haplesshero13/lcc-lc3) to `~/.lc3tools` and `~/.lcc-lc3`. Then, it will `cd` into each directory and run `./configure` and `make install` with the directory `~/.lc3` as the install target directory for both.

The `lc3tools` includes a simulator for the LC3, as well as an assembler and a basic OS. It is originally by Steven S. Lumetta.

The `lcc-lc3` C compiler is an updated version of LCC for LC3, originally by Ajay Ladsaria and Sanjay J. Patel, that includes Prof. Sean Smith's `no-sse` fix, and that installs to `~/.lc3` by default. More details are at the [lcc-lc3 compiler GitHub page](https://github.com/haplesshero13/lcc-lc3).

Finally, the script checks if `~/.lc3` is in your path. If it isn't, and you use bash or zsh, it will add the line `export PATH="$HOME/.lc3:$PATH"` to your `.bash_profile` or your `.zshrc`, depending on which shell it detects. If you use any other shell, you probably know how to add `~/.lc3` to your path already, but I don't. ;)

## Known Issues

Currently, the LC3 Developer Platform doesn't compile and link properly on 64-bit Linux, even given 32-bit libs. For now, use 32-bit Linux if possible.

## Author
This script and the directions in the README here are written and maintained by Avery Yen (gmail: haplesshero13). Direct any complaints, bug reports, and funny stories to him. The associated projects, [lc3tools](https://github.com/haplesshero13/lc3tools) and [lcc-lc3 compiler](https://github.com/haplesshero13/lcc-lc3), are also being maintained by Avery. See those project pages for more details.

## License

(This license applies only to the install script. The submodules of this project are under their own licenses.)

Copyright (c) 2012 Avery Yen

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.