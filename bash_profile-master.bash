# source bashrc
if [[ -f ~/.bashrc ]]; then
    . ~/.bashrc
fi

if [[ $(hostname -s) == cheme-skubal ]];
then
    source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
    source /opt/homebrew/opt/chruby/share/chruby/auto.sh
    chruby ruby-3.1.3
fi


if [[ $(hostname -s) == MacBook-Pro ]];
then
    export PATH=/Applications/Ovito.app/Contents/MacOS:$PATH
    export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
fi

# stuff for my desktop
if [[ $HOSTNAME == perry.engin.umich.edu ]]; then
    export PATH=$PATH:/Applications/Ovito.app/Contents/MacOS/

    # added by Anaconda3 5.0.1 installer
    export PATH="/Users/mootimot/anaconda3/bin:$PATH"

fi
