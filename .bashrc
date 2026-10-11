# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='\[\e[1;38;2;255;102;204m\][\u@\h \W]\[\e[22;97m\] >\[\e[0m\] '
alias w3m='w3m duckduckgo.com'
alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
alias icat='kitty +kitten icat'
alias ff='printf "\n";fastfetch'
#alias ff='fastfetch --config configsmall3.jsonc --logo-type small'
alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'
alias clr='clear'
if [[ -n "$TERM_PROGRAM" || -n "$KITTY_WINDOW_ID" ]]; then
	fastfetch --config configsmall.jsonc --logo-type small
	eval "$(starship init bash)"
	if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
fi
shopt -s histappend
source ~/.local/share/blesh/ble.sh
ble-face -s syntax_error 'fg=#ffcccb'
ble-face -s auto_complete 'fg=#666666,bg=default'
fi

export PATH="$PATH:/home/spike/.local/bin"
