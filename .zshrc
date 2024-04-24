export ZSH="$HOME/.oh-my-zsh"
export PATH=/opt/homebrew/bin:$PATH
export THEME_COLOR="gruvbox"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
source_if_exists () {
    if test -r "$1"; then
        source "$1"
    fi
}
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


plugins=(git nvm python macos web-search )

source_if_exists $ZSH/oh-my-zsh.sh
source_if_exists $HOME/zsh/alias.zsh

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
# User configuration
bindkey -v
export EDITOR='nvim'

eval "$(zoxide init zsh)"

# Paths
export SCRIPTS="$HOME/bin/"
export PATH="$PATH:$SCRIPTS"
export GEM_HOME="$HOME/.gem"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# add bin to path
for file in $HOME/bin/*; do
    export PATH=$PATH:$file
done

global-colors "gruvbox"


source ~/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/zsh/zsh-plugs/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

