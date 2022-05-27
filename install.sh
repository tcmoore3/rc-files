### Install the configuration files

# Run this script to install the configuration files.
# Doing so on every machine should make the shell feel the same on every machine.


# laptop
if [[ $HOSTNAME == MacBook-Pro.attlocal.net ]]; then
    cp bashrc-master ~/.bashrc
    cp bash_profile-master ~/.bash_profile
fi

# brett
if [[ $HOSTNAME == brett.engin.umich.edu ]]; then
    cp bashrc-master ~/.bashrc_custom
    cp bash_profile-master ~/.bash_profile
fi

# picasso
if [[ $HOSTNAME == picasso.engin.umich.edu ]]; then
    cp bashrc-master ~/.bashrc_custom
    cp bash_profile-master ~/.bash_profile
fi

# warhol
if [[ $HOSTNAME == warhol.engin.umich.edu ]]; then
    cp bashrc-master ~/.bashrc_custom
    cp bash_profile-master ~/.bash_profile
fi

# bridges2
if [[ $HOME == /jet/home/mootimot ]]; then
    cp bashrc-master ~/.bashrc
    cp bash_profile-master ~/.bash_profile
fi

# great-lakes
if [[ $CLUSTER_NAME == greatlakes ]]; then
    cp bashrc-master ~/.bashrc
    cp bash_profile-master ~/.bash_profile
fi

# hodges
if [[ $HOSTNAME == cheme-hodges ]]; then
    cp bashrc-master ~/.bashrc_custom
    cp bash_profile-master ~/.bash_profile
fi

# perry
if [[ $HOSTNAME == perry.engin.umich.edu ]]; then
    cp bashrc-master ~/.bashrc
    cp bash_profile-master ~/.bash_profile
fi

# summit
if [[ $LMOD_SYSTEM_NAME == summit ]]; then
    cp bashrc-master ~/.bashrc
    cp bash_profile-master ~/.bash_profile
fi
