# 2021-08-30    WinMess inspired by WinGrid-antiX
#               Uninstallation script.
# Installation directory.
PREFIX="$1"
[ -z $PREFIX ] && PREFIX="$HOME"

# Path to binaries.
BINDIR="$PREFIX/bin"

# Path to utility functions.
LIBDIR="$PREFIX/lib"

# Path to configs.
CONFDIR="$HOME/.config"

DIST='winmess-version winmess-usage winmess-dim winmess-place'
HERE="$(pwd)"
cd $BINDIR
rm -vf $DIST
cd $LIBDIR
rm -vf winmess-lib.sh
cd $CONFDIR
rm -vf winmess.conf
cd "$HERE"
