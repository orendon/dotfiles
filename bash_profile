PATH=$PATH:~/bin/

# /usr/libexec/java_home
PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home

export PATH

export GOPATH=$HOME/dev/go

eval "$(rbenv init -)"

if [ -f ~/.gitcolors ]; then
    source ~/.gitcolors
fi

if [ -f ~/.extras ]; then
    source ~/.extras
fi

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
