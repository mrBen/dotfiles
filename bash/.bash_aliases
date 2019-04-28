alias vialias='$VISUAL ~/.bash_aliases && source ~/.bashrc'

# Aliases
alias wifi='sudo wifi-menu -o'
alias music="termite -e 'ncmpcpp -s visualizer'& ncmpcpp"
alias dl-audio="youtube-dl --ignore-config --output '~/Downloads/dl-audio/%(title)s.%(ext)s' --restrict-filename --extract-audio --audio-quality 0 --add-metadata https://www.youtube.com/playlist?list=PLNY_glB-l8nVX_XPotAGVFNQumdzkOa05"
alias dl-album="youtube-dl --ignore-config --output '~/Downloads/%(playlist)s/%(title)s.%(ext)s' --restrict-filename --extract-audio --audio-format mp3 --audio-quality 0"
alias pandora='firefox https://darebee.com/pandora/&exit'

# Functions
function config { vim ~/.config/"$1"; }
function plug { udisksctl mount -b /dev/"$1"; }
function unplug { udisksctl unmount -b /dev/"$1"; }
function burn { dd bs=4M if="$1" of="$2" status=progress oflag=sync; }
