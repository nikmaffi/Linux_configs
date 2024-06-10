
# User configurations
alias rclonemnt='rclone mount gdrive:/Drive ~/Documenti/Drive'

alias tree='tree -C'

alias la='ls -a'
alias ll='ls -lah'

if [ $XDG_SESSION_TYPE == "wayland" ]
then
	alias pbcopy='wl-copy'
	alias pbpaste='wl-paste'
elif [ $XDG_SESSION_TYPE == "x11" ]
then
	alias pbcopy='xsel --input --clipboard'
	alias pbpaste='xsel --output --clipboard'
fi

#cowsay Hello $(whoami)!
#cowsay Hello ${USER^}!
fastfetch

#eval "$(starship init bash)"
PS1='[\e[1;32m\u@\h\e[0m \e[1;34m\W\e[0m]\$ '
