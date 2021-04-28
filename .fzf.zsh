# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/yassine/.config/nvim/plugged/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/yassine/.config/nvim/plugged/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/yassine/.config/nvim/plugged/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/yassine/.config/nvim/plugged/fzf/shell/key-bindings.zsh"
