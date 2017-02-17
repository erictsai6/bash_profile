###  Listens to a port and outputs the process using it ###
pidportfunction() {
    lsof -n -i4TCP:$1 | grep LISTEN
}
 
alias pidport=pidportfunction

###  Simple function to kill all phantomjs processes  ###
killphantomfunction() {
    ps -ef | grep phantom | grep -v grep | awk '{print $2}' | sudo xargs kill
}

alias killphantom=killphantomfunction

gitstatusfunction() {
    git status
}
alias gs=gitstatusfunction

jdkswitchfunction() {
    export JAVA_HOME=`/usr/libexec/java_home -d 64 -v "1.$1*"`    
}
alias jdkswitch=jdkswitchfunction

###  Sets up the PATH environment variable  ###
export PATH=$PATH:/Users/etsai/Documents/programs/gradle-1.11/bin
export PATH=$PATH:/Users/etsai/Documents/programs/scala-2.11.2/bin
export PATH=$PATH:/Users/etsai/Documents/programs/bin/

export JAVA_HOME=`/usr/libexec/java_home -d 64 -v "1.7*"`

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

eval "$(rbenv init -)"

key_file=~/.ssh/id_rsa

# Add if not already added
[[ -z $(ssh-add -L | grep $key_file) ]] && ssh-add $key_file

###-tns-completion-start-###
if [ -f /Users/etsai/.tnsrc ]; then 
    source /Users/etsai/.tnsrc 
fi
###-tns-completion-end-###
