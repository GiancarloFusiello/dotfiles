#####
# My Personal settings
#####

# My aliases
alias cat="bat"
alias df="duf"
alias dig="dog"
alias du="ncdu"
alias http="xh"
alias ls="exa -lah --icons --git"
alias tree="exa --tree --level=2 --long --icons --git -lha"
alias vim="nvim"

# My functions
cx() { cd "$@" && ls; }

# My key bindings
bindkey '^ ' autosuggest-accept

# My environment variables
PYTHONDONTWRITEBYTECODE=1

# Add location of brew packages to PATH
export PATH="/usr/local/sbin:$PATH"

# Start zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Start zsh-fast-syntax-highlighting
source /usr/local/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# configure asdf
source /usr/local/opt/asdf/libexec/asdf.sh

# Start Starship
eval "$(starship init zsh)"

