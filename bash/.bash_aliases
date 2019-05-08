alias vialias='$VISUAL ~/.bash_aliases && source ~/.bash_aliases'

# Aliases
alias bc='bc -l'
alias bt='bluetoothctl'
alias dl-album="youtube-dl --ignore-config --output '~/Downloads/%(playlist)s/%(title)s.%(ext)s' --restrict-filename --extract-audio --audio-format mp3 --audio-quality 0"
alias dl-audio="youtube-dl --ignore-config --output '~/Downloads/dl-audio/%(title)s.%(ext)s' --restrict-filename --extract-audio --audio-quality 0 --add-metadata https://www.youtube.com/playlist?list=PLNY_glB-l8nVX_XPotAGVFNQumdzkOa05"
alias mnt='udisksctl mount -b'
alias music="termite -e 'ncmpcpp -s visualizer' & ncmpcpp"
alias pandora='firefox https://darebee.com/pandora/ & exit'
alias sudo='sudo '
alias umnt='udisksctl unmount -b'
alias wifi='sudo wifi-menu -o'
alias wttr='curl http://wttr.in/Paris'

# Functions
function burn {
	sudo -k dd bs=4M if="$1" of="$2" status=progress oflag=sync
}
