# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# ========================= Path ========================= #
export ZSH="$HOME/.oh-my-zsh"
export GOROOT=/usr/local/go
export GOPATH=$HOME/Documents/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH="$(brew --prefix python)/libexec/bin:$PATH"

# ========================= Theme ========================= #
ZSH_THEME="powerlevel10k/powerlevel10k"

# ========================= Plugins ========================= #
plugins=( 
    git 
    zsh-autosuggestions 
    zsh-syntax-highlighting 
    web-search
)

source $ZSH/oh-my-zsh.sh

# ========================= Plugins ========================= #
alias vi=nvim
alias vim=nvim
alias vimdiff="nvim -d"
alias py=python3

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

