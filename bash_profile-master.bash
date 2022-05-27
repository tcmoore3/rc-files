# source bashrc
if [[ -f ~/.bashrc ]]; then
    . ~/.bashrc
fi

if [[ $(hostname -s) == MacBook-Pro ]];
then
    export PATH=/Applications/Ovito.app/Contents/MacOS:$PATH
    export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
fi

if [[ $HOSTNAME == perry.engin.umich.edu ]]; then
    export PATH=$PATH:/Applications/Ovito.app/Contents/MacOS/

    # added by Anaconda3 5.0.1 installer
    export PATH="/Users/mootimot/anaconda3/bin:$PATH"

fi
