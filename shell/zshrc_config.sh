# new path with yarn and mongo
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/code/mongodb/bin:$PATH"

# path to zsh
export CDPATH="$HOME/code:$HOME/code/42"

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Path to your oh-my-zsh installation.
export ZSH="/home/adrien/.oh-my-zsh"

# my custom theme
#ZSH_THEME=powerlevel10k/powerlevel10k
# source ~/p10k-lean.zsh

# array of pluging
plugins=(
  git
#  zsh-syntax-highlighting
#  zsh-autosuggestions
#  Colored-man-pages
)

# omz data
source $ZSH/oh-my-zsh.sh

dir="$HOME/code/setting_software/shell"

# my alias
source "$dir"/alias.sh

# add function
fpath=(
  "$dir"/functions
  "${fpath[@]}"
)

autoload -Uz \
  mcd \
  gitp \
  git_branch_archive \
  Clion
