
# fish_vi_key_bindings

## -----------------------------------------------------
# for bash command history 
# cf) https://superuser.com/questions/719531/what-is-the-equivalent-of-bashs-and-in-the-fish-shell
function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t $history[1]; commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -t ""
            commandline -f history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

bind -M insert ! bind_bang
bind -M insert '$' bind_dollar

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

## cd後にls 
function cd 
    builtin cd $argv; and ls
end

# User specific aliases and functions
alias gff="git flow feature"
# alias glg="git log --pretty=format:\"%h (%an %ad) %s\" --graph"
alias glg="git log --pretty=format:'%C(red reverse)%d%Creset%C(white reverse) %h% Creset %C(green reverse) %an %Creset %C(cyan)%ad%Creset%n%C(white bold)%w(80)%s%Creset%n%w(80,2,2)%b' --graph"
alias vi="vim"
alias view="vim -R"

