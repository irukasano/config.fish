
# Navigation
function ..    ; cd .. ; end
function ..2   ; cd ../.. ; end
function ..3   ; cd ../../.. ; end
function ..4   ; cd ../../../.. ; end

# Utilities
function grep     ; command grep --color=auto $argv ; end


alias fcd="__fzf_cd"
alias fopen="__fzf_open"

# git
function g        ; git $argv ; end
alias gf="git flow"
alias gff="git flow feature"
alias glg="git log --pretty=format:'%C(red reverse)%d%Creset%C(blue reverse) %h% Creset %C(blue reverse) %an %Creset %C(cyan)%ad%Creset%n%C(white bold)%w(80)%s%Creset%n%w(80,2,2)%b' --graph --date-order"


# Setting
alias svimrc="vim ~/.vim_runtime"
alias snvim="vim ~/.config/nvim/init.vim"
alias sfish="vim ~/.config/fish"
alias sdot="vim ~/dotfiles"

# Other
alias vi="vim"
alias view="vim -R"
alias la="clear && ls -la"

