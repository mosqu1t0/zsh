export EDITOR='nvim'
export HOME='/home/mosquito'
export VIMPATH="$HOME/.config/nvim"
export PATH="$PATH:/home/mosquito/Desktop"



# system design ------------------------------


alias vim='nvim'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'
export LESS='-R --use-color -Dd+r$Du+b'
alias ls='ls --color'
alias ll='ls -l'
alias spS='sudo pacman -S'
alias spSs='sudo pacman -Ss'
alias syyu='sudo pacman -Syyu'





# user design -------------------------------

alias reboot='signOut && sudo systemctl reboot'
alias poweroff='signOut && sudo systemctl poweroff'

alias droptrash='sudo rm -vrfI /home/mosquito/.local/share/Trash/*'
alias pc='proxychains4'

