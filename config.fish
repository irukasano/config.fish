
# fish_vi_key_bindings

## -----------------------------------------------------
# for bash command history 
# cf) https://superuser.com/questions/719531/what-is-the-equivalent-of-bashs-and-in-the-fish-shell
#function bind_bang
#    switch (commandline -t)[-1]
#        case "!"
#            commandline -t $history[1]; commandline -f repaint
#        case "*"
#            commandline -i !
#    end
#end
#
#function bind_dollar
#    switch (commandline -t)[-1]
#        case "!"
#            commandline -t ""
#            commandline -f history-token-search-backward
#        case "*"
#            commandline -i '$'
#    end
#end
#
#bind -M insert ! bind_bang
#bind -M insert '$' bind_dollar

# encoding
set -x LANG ja_JP.UTF-8

## -----------------------------------------------------
# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showcolorhints 'yes'

## -----------------------------------------------------
## custom command 
fish_vi_key_bindings 

## cd後にls 
function cd 
    builtin cd $argv; and ls
end

# User specific aliases and functions
alias gff="git flow feature"
# alias glg="git log --pretty=format:\"%h (%an %ad) %s\" --graph"
alias glg="git log --pretty=format:'%C(red reverse)%d%Creset%C(blue reverse) %h% Creset %C(blue reverse) %an %Creset %C(cyan)%ad%Creset%n%C(white bold)%w(80)%s%Creset%n%w(80,2,2)%b' --graph --date-order"
alias vi="vim"
alias view="vim -R"

set PATH ~/scripts $PATH

set -x LESS "-R"
#set -x LESSOPEN "~/dotfiles/lessopen.sh %s"
#set -x LESSOPEN "||/usr/bin/src-hilite-lesspipe.sh %s"
set -x LESSOPEN "||/usr/bin/lesspipe.sh %s"
set -x LESSCLOSE "~/dotfiles/lessclose.sh %s %s"

set -x LESS_TERMCAP_mb (printf "\e[1;32m")
set -x LESS_TERMCAP_md (printf "\e[1;32m")
set -x LESS_TERMCAP_me (printf "\e[0m")
set -x LESS_TERMCAP_se (printf "\e[0m")
set -x LESS_TERMCAP_so (printf "\e[01;33m")
set -x LESS_TERMCAP_ue (printf "\e[0m")
set -x LESS_TERMCAP_us (printf "\e[1;4;31m")

