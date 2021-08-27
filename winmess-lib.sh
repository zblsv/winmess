# 2021-08-26    WinMess Inspired by WinGrid-antiX
#               Utility functions.

# Display error message.
error() {
    YADBOX="--title=WinMess --image=error --button=OK:1 --buttons-layout=center --center --borders=10"
    [ "$DISPLAY" != "" ] && yad $YADBOX --text="$1"
}

# Show usage if requested.
init_help() {
    # When requested show information about script.
    if [ "$1" = '-h' ] || [ "$1" = '--help' ]
    then
       PROGNAME=$PROGNAME PROGVERSION=$PROGVERSION winmess-usage
       exit 0
    fi
}

# Initialize screen resolutions.
init_res() {
    # Guard against missing individual settings.
    [ -z "$WINHEIGHT_LESS" ] && WINHEIGHT_LESS=0
    [ -z "$WINHEIGHT_MORE" ] && WINHEIGHT_MORE=0
    [ -z "$GAPTOP" ] && GAPTOP=0
    [ -z "$GAPLEFT" ] && GAPLEFT=0

    # Construct Parameters
    # --------------------

    # Capture screen resolution value.
    SCREENRES=$(xdpyinfo | awk '/dimensions:/ { sub("x", " "); print $2" "$3 }')

    # Extract screen resolution into height and width components.
    SCREENWIDTH=${SCREENRES% *}
    SCREENHEIGHT=${SCREENRES#* }

    # Calculate 50% of the screen width and height values.
    SCREENHALFWIDTH=$(($SCREENWIDTH/2))
    SCREENHALFHEIGHT=$(($SCREENHEIGHT/2))

    # Reference used by window manager when positioning the window (always
    # zero).
    GRAVITY=0
}
