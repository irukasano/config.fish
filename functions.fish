
## cd後にls 
function cd 
    builtin cd $argv; and ls
end

function sudo!!
    eval sudo $history[1]
end

