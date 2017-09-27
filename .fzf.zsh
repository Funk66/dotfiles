# Setup fzf
# ---------
if [[ ! "$PATH" == */home/guillermo/.fzf/bin* ]]; then
  export PATH="$PATH:/home/guillermo/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/guillermo/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/guillermo/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
