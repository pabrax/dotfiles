#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/pabrax/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/pabrax/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
alias dotfiles_config='/usr/bin/git --git-dir=/home/pabrax/.cfg/ --work-tree=/home/pabrax'
