# config.fish

## install

### install fish shell

CentOS のバージョン確認

    cat /etc/redhat-release 
    
CentOS 7 の場合は、 root で下記のコマンドを実行してください:

    cd /etc/yum.repos.d/
    wget https://download.opensuse.org/repositories/shells:fish:release:2/CentOS_7/shells:fish:release:2.repo
    yum install fish

CentOS 6 の場合は、 root で下記のコマンドを実行してください:

    cd /etc/yum.repos.d/
    wget https://download.opensuse.org/repositories/shells:fish:release:2/CentOS_6/shells:fish:release:2.repo
    yum install fish


### install fzf

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install

### install fish config(this repo)

    mkdir ~/.config
    cd ~/.config
    git clone https://github.com/irukasano/config.fish.git fish



