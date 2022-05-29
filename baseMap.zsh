export EDITOR='nvim'
export HOME='/home/mosquito'
export VIMPATH="$HOME/.config/nvim"
export PATH="$PATH:/home/mosquito/Mybin"

alias vim='nvim'
alias ls='ls --color'
alias ll='ls -l'

alias reboot='signOut && sudo systemctl reboot'
alias poweroff='signOut && sudo systemctl poweroff'

alias droptrash='sudo rm -vrf /home/mosquito/.local/share/Trash/*'
alias pc='proxychains4'
