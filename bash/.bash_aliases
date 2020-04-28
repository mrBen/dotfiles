alias vialias='$VISUAL ~/.bash_aliases && source ~/.bash_aliases'

# Aliases
alias bc='bc -l'
alias cdgo='cd $GOPATH/src/github.com/mrBen'
alias dl-album="youtube-dl --ignore-config --output '~/Downloads/%(playlist)s/%(title)s.%(ext)s' --restrict-filename --extract-audio --audio-format opus --audio-quality 0"
alias dl-audio="youtube-dl --ignore-config --output '~/Downloads/dl-audio/%(title)s.%(ext)s' --restrict-filename --extract-audio --audio-quality 0 --add-metadata https://www.youtube.com/playlist?list=PLNY_glB-l8nVX_XPotAGVFNQumdzkOa05"
alias emacs='emacs -nw'
alias films='ls -I "*.srt" ~/Videos/Films/'
alias wttr='curl --silent http://wttr.in/Grenoble | head --lines=7'

# Functions
function burn {
	sudo -k dd bs=4M if="$1" of="$2" status=progress oflag=sync
}

function cpfilm {
	if [[ $# -ge 4 && -f "$1" ]]
	then
		ffmpeg -loglevel quiet -i "$1" -map 0 -map_metadata -1 -c copy -metadata title="$2" -metadata date=$3 -metadata artist="$4" "$HOME/Videos/Films/${2//[\<\>:\"\/\\?\*]/_} ($3).${1##*.}"
	else
		echo "Usage: cpfilm video.mp4 'title' YYYY 'director'"
	fi
}

function safe {
	echo ${1//[\<\>:\"\/\\?\*]/_}
}

function setmeta {
	if [[ $# -ge 4 && -f "$1" ]]
	then
		mv "$1" ".~video~"
		ffmpeg -i ".~video~" -map 0 -map_metadata 0 -c copy -metadata title="$2" -metadata date="$3" -metadata artist="$4" "$1"
		rm ".~video~"
	else
		echo "Usage: setmeta video.mp4 'title' YYYY 'film director'"
	fi
}

function embed {
	if [[ $# -ge 3 && -f "$2" ]]
	then
		case "$1" in

			subtitles | sub | s)
				if [[ $# -ge 4 && -f "$3" ]]
				then
					mv "$2" ".~video~"
					if [[ "${2##*.}" == "mp4" ]]
					then
						ffmpeg -loglevel quiet -i "$3" -i ".~video~" -map 0 -map 1 -map_metadata 1 -c copy -c:s mov_text -metadata:s:s:0 language="$4" "$2"
					else
						ffmpeg -loglevel quiet -i "$3" -i ".~video~" -map 0 -map 1 -map_metadata 1 -c copy -metadata:s:s:0 language="$4" "$2"
					fi
					rm ".~video~"
					rm "$3"
				else
					echo "Usage: embed subtitles video.mp4 subtitles.srt eng"
				fi
				;;

			thumbnail | thumb | t)
				mv "$2" ".~video~"
				ffmpeg -loglevel quiet -i "$3" -i ".~video~" -map 0 -map 1 -map_metadata 1 -c copy -disposition:v:0 attached_pic "$2"
				rm ".~video~"
				if [[ -f "$3" ]]
				then
					rm "$3"
				fi
				;;

			*)
				echo "Usage: embed subtitles video.mp4 subtitles.srt eng"
				echo "       embed thumbnail video.mp4 http://example.com/thumbnail.png"
				;;
		esac
	else
		echo "Usage: embed subtitles video.mp4 subtitles.srt eng"
		echo "       embed thumbnail video.mp4 http://example.com/thumbnail.png"
	fi
}

function update-minecraft {
	if [[ $# -eq 1 ]]
	then
		file='minecraft-launcher_'"$1"'.tar.gz'

		wget 'https://launcher.mojang.com/download/linux/x86_64/'"$file"

		if [[ -f $file ]]
		then
			sudo rm -rf /opt/minecraft-launcher
			sudo tar -xvzf $file -C /opt/
			rm $file
		else
			echo 'Version '"$1"' does not exist'
		fi
	else
		echo 'Usage: update-minecraft version'
	fi
}
