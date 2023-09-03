export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gentoo"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export EDITOR=nvim

alias rm="rm -v"
alias cp="cp -v"
alias mv="mv -v"
alias ln="ln -v"

alias ip="ip --color"
alias py="python3"

rm -rf ~/.zcomp*
rm -rf ~/.pki

clear
