PATH=$PATH:~/bin

# home bre
PATH="/usr/local/sbin:$PATH"

# /usr/libexec/java_home
PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home

export PATH

export GOPATH=$HOME/dev/go

eval "$(rbenv init -)"

#eval "$(pipenv --completion)"

if [ -f ~/.gitcolors ]; then
    source ~/.gitcolors
fi

if [ -f ~/.extras ]; then
    source ~/.extras
fi

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# gitinspector
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# needed by Miniconda3
export PATH="/Users/orendon/miniconda3/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/orendon/Documents/work/barista/prjs/google-cloud-sdk/path.bash.inc' ]; then source '/Users/orendon/Documents/work/barista/prjs/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/orendon/Documents/work/barista/prjs/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/orendon/Documents/work/barista/prjs/google-cloud-sdk/completion.bash.inc'; fi

# Some installs add stuff to .bashrc so included here
source ~/.bashrc

# Enable long history
HISTFILESIZE=1000000000
HISTSIZE=1000000
