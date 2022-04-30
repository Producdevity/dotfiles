# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/bashrc.pre.bash"
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/bashrc.post.bash"
