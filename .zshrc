# fnm bindings
source $ZDOTDIR/fnm.zsh

# fzf bindings
source $ZDOTDIR/fzf.zsh

# key bindings
source $ZDOTDIR/zle.zsh

# support telescope.repo extension for vim
source $ZDOTDIR/locate.zsh

# aliases
source $ZDOTDIR/zsh-alias.zsh

setopt HIST_SAVE_NO_DUPS        # Do not write a duplicate event to the history file.

autoload -U compinit; compinit  # Enable completion
_comp_options+=(globdots)       # With hidden files
# TODO: add https://github.com/Phantas0s/.dotfiles/blob/master/zsh/completion.zsh

# prompt
eval "$(starship init zsh)"

# dir stack
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# cursor shape in insert/normal mode
source $ZDOTDIR/cursor.zsh





alacritty-themes Gruvbox-Dark
