# config.fish

## install

### install fish shell

root にて

CentOS のバージョン確認

    cat /etc/redhat-release 

CentOS 8 の場合は、 root で下記のコマンドを実行してください:

    cd /etc/yum.repos.d/
    wget https://download.opensuse.org/repositories/shells:fish:release:3/CentOS_8/shells:fish:release:3.repo
    yum install fish

CentOS 7 の場合は、 root で下記のコマンドを実行してください:

    cd /etc/yum.repos.d/
    wget https://download.opensuse.org/repositories/shells:fish:release:3/CentOS_7/shells:fish:release:3.repo
    yum install fish

CentOS 6 の場合は、 root で下記のコマンドを実行してください:

    cd /etc/yum.repos.d/
    wget  https://download.opensuse.org/repositories/shells:/fish/RedHat_RHEL-6/shells:fish.repo
    yum install fish



### install fisherman

インストールしたいユーザーで以下を行います。

    $ fish
    > curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

### install fzf

    > fisher install jethrokuan/fzf

    $ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    $ ~/.fzf/install

### install fish config(this repo)

    $ cd ~/.config
    $ mv fish fish.bak
    $ git clone https://github.com/irukasano/config.fish.git fish
    $ cd fish
    $ git submodule update --init
    $ fish
    

