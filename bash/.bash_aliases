alias vialias='$VISUAL ~/.bash_aliases && source ~/.bash_aliases'

# Aliases
alias bc='bc -l'
alias dl-album="youtube-dl --ignore-config --output '~/Downloads/%(playlist)s/%(title)s.%(ext)s' --restrict-filename --extract-audio --audio-format opus --audio-quality 0"
alias dl-audio="youtube-dl --ignore-config --output '~/Downloads/dl-audio/%(title)s.%(ext)s' --restrict-filename --extract-audio --audio-quality 0 --add-metadata https://www.youtube.com/playlist?list=PLNY_glB-l8nVX_XPotAGVFNQumdzkOa05"
alias films='ls -I "*.srt" ~/Videos/Films/'
alias wttr='curl --silent http://wttr.in/Pougny | head --lines=7'

# Functions
function burn {
	sudo -k dd bs=4M if="$1" of="$2" status=progress oflag=sync
}

function cpfilm {
	cp -T "$1" "$HOME/Videos/Films/${2//[\<\>:\"\/\\?\*]/_} ($3).${1##*.}"
}
