# install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install dependencies using homebrew
brew bundle

# add config files to home directory
stow stow-global-ignore
stow git
stow iterm
stow starship
stow zsh

# install nvchad nvim config
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
stow nvim

# add languages to asdf
asdf plugin-add python
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
