# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:$HOME/.local/bin/

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/home/pabrax/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
alias dotfiles_config='/usr/bin/git --git-dir=/home/pabrax/.cfg/ --work-tree=/home/pabrax'
