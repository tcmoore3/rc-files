if [[ $(hostname -s) == cheme-skubal ]];
then
    source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
    source /opt/homebrew/opt/chruby/share/chruby/auto.sh
    chruby ruby-3.1.3
fi

if [[ -f $HOME/.machine_cheme-paris ]]; then
    # set up homebrew shell integration
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # set ENV to ~/.bashrc since kitty starts bash in posix mode which 
    # doesn't read ~/.bashrc by default but instead reads the file pointed
    # to by the environment variable $ENV
    export ENV=~/.bashrc

    export PATH=/Users/mtimc/software/micromamba/bin:$PATH
    . "$HOME/.cargo/env"
    if [[ $- == *"$i"* ]]; then
        . ~/.bashrc
    fi
fi

if [[ $(hostname -s) == cheme-kaline ]];
then
    export PATH=/Users/mtimc/micromamba/bin:$PATH
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

# bridges2-specific things
if [[ $HOME == /jet/home/mootimot ]]; then
    echo "Logged in to Bridges 2."
    echo "Activate your base Python environment with the following commands:"
    echo "  $ module load anaconda3/2022.10"
    echo "  $ . /opt/packages/anaconda3-2022.10/bin/activate my-base"
    echo ""
fi

# anvil-specific settings
if [[ $RCAC_CLUSTER == anvil ]]; then
    echo "Logged in to Anvil."
    echo "Activate your base Python environment with the following commands:"
    echo "  $ module load anaconda/2021.05-py38"
    echo "  $ . /apps/spack/anvil/apps/anaconda/2021.05-py38-gcc-8.4.1-vrzyh2x/bin/activate my-base"
    echo ""
fi
