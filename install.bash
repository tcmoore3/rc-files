### Install the configuration files

# Run this script to install the configuration files.
# Doing so on every machine should make the shell feel the same on every machine.

# get the most up-to-date bash completion and prompt files
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.bash

# laptop
if [[ $(hostname -s) == MacBook-Pro ]]; then
    cp bashrc-master.bash ~/.bashrc
    cp bash_profile-master.bash ~/.bash_profile
    conda init bash
fi

# brett
if [[ $HOSTNAME == brett.engin.umich.edu ]]; then
    cp bashrc-master.bash ~/.bashrc_custom
    cp bash_profile-master.bash ~/.bash_profile
fi

# picasso
if [[ $HOSTNAME == picasso.engin.umich.edu ]]; then
    cp bashrc-master.bash ~/.bashrc_custom
    cp bash_profile-master.bash ~/.bash_profile
fi

# warhol
if [[ $HOSTNAME == warhol.engin.umich.edu ]]; then
    cp bashrc-master.bash ~/.bashrc_custom
    cp bash_profile-master.bash ~/.bash_profile
fi

# bridges2
if [[ $HOME == /jet/home/mootimot ]]; then
    cp bashrc-master.bash ~/.bashrc
    cp bash_profile-master.bash ~/.bash_profile
    module load anaconda3
    conda init bash
    echo "conda activate my-base" >> ~/.bashrc
fi

# great-lakes
if [[ $CLUSTER_NAME == greatlakes ]]; then
    cp bashrc-master.bash ~/.bashrc
    cp bash_profile-master.bash ~/.bash_profile
fi

# hodges
if [[ $HOSTNAME == cheme-hodges ]]; then
    cp bashrc-master.bash ~/.bashrc_custom
    cp bash_profile-master.bash ~/.bash_profile
fi

# perry
if [[ $HOSTNAME == perry.engin.umich.edu ]]; then
    cp bashrc-master.bash ~/.bashrc
    cp bash_profile-master.bash ~/.bash_profile
    conda init bash
fi

# summit
if [[ $LMOD_SYSTEM_NAME == summit ]]; then
    cp bashrc-master.bash ~/.bashrc
    cp bash_profile-master.bash ~/.bash_profile
fi

# kaline
if [[ $HOSTNAME == cheme-kaline.engin.umich.edu ]]; then
    cp bashrc-master.bash ~/.bashrc
    cp bash_profile-master.bash ~/.bash_profile
fi
