alias vialias='$VISUAL ~/.bash_aliases && source ~/.bashrc'

# Aliases
alias bt='bluetoothctl'
alias dl-album="youtube-dl --ignore-config --output '~/Downloads/%(playlist)s/%(title)s.%(ext)s' --restrict-filename --extract-audio --audio-format mp3 --audio-quality 0"
alias dl-audio="youtube-dl --ignore-config --output '~/Downloads/dl-audio/%(title)s.%(ext)s' --restrict-filename --extract-audio --audio-quality 0 --add-metadata https://www.youtube.com/playlist?list=PLNY_glB-l8nVX_XPotAGVFNQumdzkOa05"
alias music="termite -e 'ncmpcpp -s visualizer'& ncmpcpp"
alias pandora='firefox https://darebee.com/pandora/&exit'
alias wifi='sudo wifi-menu -o'
alias wttr='curl http://wttr.in/Paris'

# Functions
function burn { dd bs=4M if="$1" of="$2" status=progress oflag=sync; }
function config { vim ~/.config/"$1"; }
function plug { udisksctl mount -b /dev/"$1"; }
function unplug { udisksctl unmount -b /dev/"$1"; }
