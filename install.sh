# 2021-08-27    WinMess inspired by WinGrid-antiX
#               Installation script.
#
# Usage:
# . install.sh
# or
# . install.sh $HOME/.local
# or
# bash install.sh
# if you hate the dot
# or
# sudo . install.sh /usr/local
# if must be sysinstalled
# then change the owner of ~/.config/winmess.conf accordingly.

# Installation directory.
PREFIX="$1"
[ -z $PREFIX ] && PREFIX="$HOME"

# Path to binaries.
BINDIR="$PREFIX/bin"

# Path to utility functions.
LIBDIR="$PREFIX/lib"

# Path to configs.
CONFDIR="$HOME/.config"

install -d $BINDIR $LIBDIR $CONFDIR
install -m 0640 winmess.conf $CONFDIR
install -m 0640 winmess-lib.sh $LIBDIR

DIST='winmess-version winmess-usage winmess-dim winmess-place'
install $DIST $BINDIR
