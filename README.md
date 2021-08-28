## About The WinMess

[WinGrid-antiX][wingrid] like shell scripts for smart placing and resizing the active window under X11.



## Getting Started

I usually place app windows in the same positions. 
Text editors, terminal emulators, the browser (when is not full screen)---they all take up different but repetitive positions and sizes.
I use keyboard to launch them from Fluxbox main menu and don't want touch the mouse.

[WinGrid-antiX][wingrid] is a good but not ideal solution for me. 
I want to see Rox icons and Conky on my wide 1920x1080 monitor.
I want place the browser some what centered and wider than terminal emulator also centered somehow.

So WinMess here for this.
It place active window exactly where it instructed by config script (winmess.conf file).


### Prerequisites

x11-utils package for
* xdpyinfo
* xwininfo


wmcrtl package for
* wmctrl


Some Unix classics must be available...
* awk (from gawk or mawk package)
* fmt
* sed
* tr


### Installation

1. Clone the repo.
   ```sh
   git clone https://github.com/zblsv/winmess.git
   ```
2. Read all the code for security holes, fatal errors, performance glitches.
3. Install into the home (recomended).
   ```sh
   . install.sh
   ```
   Or into the system (not recomended).
   ```sh
   sudo . install.sh /usr/local/bin
   ME=$(whoami)
   sudo chown $ME:$ME $HOME/.config/winmess.conf
   ```

### Update to latest version

Use git to fetch from the origin.
See details here: [Getting changes from a remote repository](https://docs.github.com/en/get-started/using-git/getting-changes-from-a-remote-repository)

Update to current HEAD.
```sh
git pull
```
Then switch to specific release if needed.
```sh
git tag -l
git checkout tags/0.1.0
```


## Usage

In ~/.config/winmess.conf define your placement hints.  Some examples given.

Define hotkeys that winmess-place will run with your window manager.  I use Fluxbox on antiX Linux.
In my ~/.fluxbox/keys is:
```
!wingrid
!Control 1 :ExecCommand wingrid-left.sh
!Control 2 :ExecCommand wingrid-right.sh
!Control 3 :ExecCommand wingrid-top.sh
!Control 4 :ExecCommand wingrid-bottom.sh
Control 5 :ExecCommand wingrid-topleft.sh
Control 6 :ExecCommand wingrid-topright.sh
!Control 7 :ExecCommand wingrid-bottomleft.sh
!Control 8 :ExecCommand wingrid-bottomright.sh
!Control 9 :ExecCommand wingrid-maximize.sh

!winmess
Control 0 :ExecCommand $HOME/bin/winmess-place T
Control 1 :ExecCommand $HOME/bin/winmess-place L0
Control 2 :ExecCommand $HOME/bin/winmess-place R0
Control 9 :ExecCommand $HOME/bin/winmess-place W
```
Don't forget to add $HOME/bin if you install to the home.


## Roadmap

See the [open issues](https://github.com/zblsv/winmess/issues) for a list of proposed features (and known issues).



## Contributing

Any contributions you make are **greatly appreciated**.

1. Fork the Project.
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`).
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the Branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.



## License

Distributed under [The Unlicense][unlicense]. See [LICENSE][license] file.



## Contact

Sergei Zyablov, [zblsv](https://github.com/zblsv).

Project Home: [https://github.com/zblsv/winmess](https://github.com/zblsv/winmessj)



## Acknowledgements

WinMess is inspired by awesome [WinGrid-antiX][wingrid] scripts from [antiX Linux][antix].


[issues]: https://github.com/zblsv/winmess/issues
[unlicense]: https://choosealicense.com/licenses/unlicense/
[license]: https://github.com/zblsv/winmess/blob/main/LICENSE
[wingrid]: https://github.com/antiX-Linux/wingrid-antix
[antix]: https://antixlinux.com/about/
