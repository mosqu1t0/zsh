autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

# change the path color
# zstyle :prompt:pure:path color '#f7768e'

# change the color for both `prompt:success` and `prompt:error`
# zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure
