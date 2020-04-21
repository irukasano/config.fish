
# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Utilities
function g        ; git $argv ; end
function grep     ; command grep --color=auto $argv ; end

# git flow 
alias gf="git flow"

# git flow feature
alias gff="git flow feature"

# git log
alias glg="git log --pretty=format:'%C(red reverse)%d%Creset%C(blue reverse) %h% Creset %C(blue reverse) %an %Creset %C(cyan)%ad%Creset%n%C(white bold)%w(80)%s%Creset%n%w(80,2,2)%b' --graph --date-order"

alias vi="vim"
alias view="vim -R"

