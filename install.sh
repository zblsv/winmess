# 2021-08-26    WinMess inspired by WinGrid-antiX
#               Installation script.
#
# Usage:
# $ . install.sh
# or
# $ . install.sh $HOME/bin
# or
# $ bash install.sh
# if you hate the dot.

# Directory of binaries.
BINDIR="$1"
[ -z $BINDIR ] && BINDIR="$HOME/bin"

# Directory of configs.
CONFDIR="$HOME/.config"

install -d $BINDIR $CONFDIR
install -m 0640 winmess.conf $CONFDIR

DIST='winmess-lib.sh winmess-version winmess-usage winmess-dim winmess-place'
install $DIST $BINDIR
