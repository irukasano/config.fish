function fish_prompt
    #set_color cyan
    #printf "%s@%s" (whoami) (hostname -I | gawk '{print $1}')
    #set_color yellow
    #printf ":%s" (prompt_pwd)
    #set_color normal
    #printf "%s " (__fish_git_prompt)
    #printf "\n\$ "
    fishline -s $status USERHOST SIGSTATUS JOBS VFISH FULLPWD GIT WRITE CLOCK N ROOT
end

