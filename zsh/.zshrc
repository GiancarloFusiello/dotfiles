#####
# My Personal settings
#####

# My aliases
alias dig="dog"
alias df="duf"
alias du="ncdu"
alias http="xh"
alias la="exa -lah --icons --git"
alias lt="exa --tree --level=2 --long --icons --git -lha"
alias gc="git checkout"
alias gcb="git checkout -b"
alias ga="git add"
alias gs="git status"
alias gpf="git pull && git fetch -p"
alias gd="git diff"
alias gds="git diff --staged"
alias gpu="git push"
alias gcm="git commit -m"
alias gl="git log"

# My functions
cx() { cd "$@" && ls; }

# My key bindings
bindkey '^ ' autosuggest-accept
bindkey '^u' history-beginning-search-backward
bindkey '^y' history-beginning-search-forward

# My environment variables
export PYTHONDONTWRITEBYTECODE=1
export BREW_PREFIX="/opt/homebrew"

# Add location of brew packages to PATH
export PATH="$BREW_PREFIX/bin:$PATH"

# Start zsh-autosuggestions
source $BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Start zsh-fast-syntax-highlighting
source $BREW_PREFIX/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# configure asdf
source $BREW_PREFIX/opt/asdf/libexec/asdf.sh

# Initialize zoxide
eval "$(zoxide init zsh)"

# Start Starship
eval "$(starship init zsh)"

# ensure git tab completion works
autoload -Uz compinit && compinit

# ZSH ignore case for suggestions
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'
