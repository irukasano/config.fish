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
    
## 付随する情報

### github cli

#### github cli add repo && install

    $ sudo yum install https://cli.github.com/packages/rpm/gh-cli.repo

または

    $ cd /etc/yum.repos.d/
    $ sudo wget https://cli.github.com/packages/rpm/gh-cli.repo

そして

    $ sudo yum install gh

#### github cli 設定

    $ cd ... （リポジトリの含まれるディレクトリへ移動）
    $ gh auth login

    ? What account do you want to log into? GitHub.com
    ? What is your preferred protocol for Git operations? HTTPS
    ? Authenticate Git with your GitHub credentials? Yes
    ? How would you like to authenticate GitHub CLI? Login with a web browser

code: ????-???? と表示されるので、
ブラウザ（ https://github.com/login/device ）でそのコードを入力

    ✓ Authentication complete. Press Enter to continue...

    - gh config set -h github.com git_protocol https
    ✓ Configured git protocol
    ✓ Logged in as ....

fish シェルで github cli 自動補完できるようにする

    $ gh completion -s fish > ~/.config/fish/completions/gh.fish

これでたとえば以下のように入力すると候補表示される

    $ gh (tab) 




