# ps1.sh

# Set a fancy prompt
. /usr/share/git-core/contrib/completion/git-prompt.sh
export PS1='$(printf "%$(($COLUMNS-1))s\r")[\u@\h \W$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)")]\$ '
