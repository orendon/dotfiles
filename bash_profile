if [ -f ~/.gitcolors ]; then
    source ~/.gitcolors
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
