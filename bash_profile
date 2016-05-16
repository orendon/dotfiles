PATH=$PATH:~/bin/
export PATH

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

