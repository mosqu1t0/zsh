# http://bolyai.cs.elte.hu/zsh-manual/zsh_14.html
bindkey '^v' edit-command-line
bindkey -v
bindkey -M vicmd "u" vi-insert
bindkey -M vicmd "h" vi-backward-char
bindkey -M vicmd "i" vi-forward-char
bindkey -M vicmd "U" vi-insert-bol
bindkey -M vicmd "A" vi-add-eol
bindkey -M vicmd "n" down-line-or-history
bindkey -M vicmd "e" up-line-or-history
bindkey -M vicmd "l" undo
#bindkey -M vicmd "-" vi-rev-repeat-search
bindkey -M vicmd "k" vi-repeat-search
bindkey -M vicmd "b" vi-forward-word-end
  
function zle-keymap-select {

	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
	echo -ne '\e[5 q'
}

_fix_cursor() {
	echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)

KEYTIMEOUT=5
