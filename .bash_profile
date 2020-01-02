#PATH
export PATH=$PATH:$HOME/bin
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

###  Listens to a port and outputs the process using it ###
pidportfunction() {
    lsof -n -i4TCP:$1 | grep LISTEN
}

alias pidport=pidportfunction

###  Shortcut for git status by typing gs instead  ###
gitstatusfunction() {
    git status
}
alias gs=gitstatusfunction

jdkswitchfunction() {
    export JAVA_HOME=`/usr/libexec/java_home -d 64 -v "1.$1*"`
}
alias jdkswitch=jdkswitchfunction

export JAVA_HOME=`/usr/libexec/java_home -d 64 -v "1.8*"`

export ANDROID_HOME=/Users/eric.tsai/Library/Android/sdk

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export GOPATH=$HOME/go
export GO111MODULE=on
export PATH=$PATH:$GOPATH/bin
export GOPRIVATE="gitlab.cbinsights.com"

export PYTHONPATH=$PYTHONPATH:/Users/eric.tsai/dev/projects:/Users/eric.tsai/dev/cbi-lib/py
export CBICONF=/Users/eric.tsai/dev/cbi-lib/config.ini

### Shortcut for navigating to gopath
cdgofunction() {
    cd ~/go/src/github.com/cbinsights/
}
alias cdgo=cdgofunction

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
