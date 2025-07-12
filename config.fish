
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

source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish

# encoding
set -x LANG ja_JP.UTF-8

# custom command
fish_vi_key_bindings

set PATH ~/scripts $PATH
set -x EDITOR vim

## -----------------------------------------------------
# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showcolorhints 'yes'

set ___fish_git_prompt_char_stashstate '⛛'

## -----------------------------------------------------

set -x LESS "-R -g -j10 --no-init --quit-if-one-screen"
#set -x LESSOPEN "~/dotfiles/lessopen.sh %s"
#set -x LESSOPEN "||/usr/bin/src-hilite-lesspipe.sh %s"
set -x LESSOPEN "||/usr/bin/lesspipe.sh %s"
#set -x LESSCLOSE "~/dotfiles/lessclose.sh %s %s"

set -x LESS_TERMCAP_mb (printf "\e[1;32m")
set -x LESS_TERMCAP_md (printf "\e[1;32m")
set -x LESS_TERMCAP_me (printf "\e[0m")
set -x LESS_TERMCAP_se (printf "\e[0m")
set -x LESS_TERMCAP_so (printf "\e[01;33m")
set -x LESS_TERMCAP_ue (printf "\e[0m")
set -x LESS_TERMCAP_us (printf "\e[1;4;31m")

eval (dircolors -p | sed 's/DIR 01;34/DIR 01;37;44/' | dircolors - -c | sed 's/^setenv/set -x/')


if status is-interactive
    set FLINE_PATH $HOME/.config/fish/fishline
    source $FLINE_PATH/init.fish
    source ~/.config/fish/themes/cyberpunk2077.fish
end

if test "$TERM_PROGRAM" = "vscode"
    set -x GIT_EDITOR "code --wait"
else
    set -x GIT_EDITOR "vim"
end

if set -q DISPLAY
    # GUIセッションでのみ ssh を smart-ssh に置き換える
    function ssh
        ~/bin/smart-ssh.sh $argv
    end

    set -x SVN_SSH "command ssh -F $HOME/.ssh/config.windows"
end


