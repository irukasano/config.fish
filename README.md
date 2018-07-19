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


### install fish config(this repo)

インストールしたいユーザーで以下を行います。

    cd ~/.config
    mv fish fish.bak
    git clone https://github.com/irukasano/config.fish.git fish

### install fiserman

    curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

### install fzf

    fisher fzf



