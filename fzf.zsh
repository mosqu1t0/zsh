export FZF_FZM_OPTS="--reverse --height 75% --min-height 30 --cycle +m --ansi --bind=ctrl-o:accept,ctrl-t:toggle --select-1"
export FZF_DMARK_OPTS="--reverse --height 75% --min-height 30 --cycle -m --ansi --bind=ctrl-o:accept,ctrl-t:toggle"
# export FZF_DEFAULT_OPTS="--height 80% --layout=reverse --border --preview '~/zsh/fzf-scope.sh {} '"
export FZF_DEFAULT_OPTS="--height 80% --layout=reverse --border "
export FZF_DEFAULT_COMMAND="fd --exclude={.wine,.git,.idea,.vscode,.sass-cache,node_modules,build,.local,.steam,.m2,.rangerdir,.ssh,.ghidra,.mozilla} --type f --hidden --follow"




# fkill - kill process
fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m --keep-right | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
	echo $pid | xargs kill -${1:-9}
  fi
}
