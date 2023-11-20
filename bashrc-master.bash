# .bashrc

# Source global definitions if they exist
if [[ -f /etc/bashrc ]]; then
	. /etc/bashrc
fi

# GIT STUFF
if [[ -f $HOME/.git-prompt.bash ]]; then
    source ~/.git-prompt.bash
fi
if [[ -f $HOME/.git-completion.bash ]]; then
    source ~/.git-completion.bash
fi
export GIT_PS1_SHOWDIRTYSTATE=1

# colors for ls, but only for linux machines (mac uses LSCOLORS and does not support this many options)
# see machine-specific settings for macs
export LS_COLORS='rs=0:di=38;5;33:ln=38;5;51:mh=44;38;5;15:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=05;48;5;232;38;5;15:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;34:*.tar=38;5;9:*.tgz=38;5;9:*.arc=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lha=38;5;9:*.lz4=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.tzo=38;5;9:*.t7z=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.Z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lrz=38;5;9:*.lz=38;5;9:*.lzo=38;5;9:*.xz=38;5;9:*.bz2=38;5;9:*.bz=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.war=38;5;9:*.ear=38;5;9:*.sar=38;5;9:*.rar=38;5;9:*.alz=38;5;9:*.ace=38;5;9:*.zoo=38;5;9:*.cpio=38;5;9:*.7z=38;5;9:*.rz=38;5;9:*.cab=38;5;9:*.jpg=38;5;13:*.jpeg=38;5;13:*.gif=38;5;13:*.bmp=38;5;13:*.pbm=38;5;13:*.pgm=38;5;13:*.ppm=38;5;13:*.tga=38;5;13:*.xbm=38;5;13:*.xpm=38;5;13:*.tif=38;5;13:*.tiff=38;5;13:*.png=38;5;13:*.svg=38;5;13:*.svgz=38;5;13:*.mng=38;5;13:*.pcx=38;5;13:*.mov=38;5;13:*.mpg=38;5;13:*.mpeg=38;5;13:*.m2v=38;5;13:*.mkv=38;5;13:*.webm=38;5;13:*.ogm=38;5;13:*.mp4=38;5;13:*.m4v=38;5;13:*.mp4v=38;5;13:*.vob=38;5;13:*.qt=38;5;13:*.nuv=38;5;13:*.wmv=38;5;13:*.asf=38;5;13:*.rm=38;5;13:*.rmvb=38;5;13:*.flc=38;5;13:*.avi=38;5;13:*.fli=38;5;13:*.flv=38;5;13:*.gl=38;5;13:*.dl=38;5;13:*.xcf=38;5;13:*.xwd=38;5;13:*.yuv=38;5;13:*.cgm=38;5;13:*.emf=38;5;13:*.axv=38;5;13:*.anx=38;5;13:*.ogv=38;5;13:*.ogx=38;5;13:*.aac=38;5;45:*.au=38;5;45:*.flac=38;5;45:*.mid=38;5;45:*.midi=38;5;45:*.mka=38;5;45:*.mp3=38;5;45:*.mpc=38;5;45:*.ogg=38;5;45:*.ra=38;5;45:*.wav=38;5;45:*.axa=38;5;45:*.oga=38;5;45:*.spx=38;5;45:*.xspf=38;5;45:';

# make directory, change into it
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

# if interactive, allow forward searching (may also stop terminal "freezing")
if [[ -z "$PS1" ]]; then
    stty -ixon
fi

# environment variables used on all machines
# machines I log in to
export HOPPER='tcmoore3@hopper.nersc.gov'
export CAD='tcmoore3@cadbury.vanderbilt.edu'
export EDWARDS='tcmoore3@edwards.vuse.vanderbilt.edu'
export EDISON='tcmoore3@edison.nersc.gov'
export CARVER='tcmoore3@carver.nersc.gov'
export DEG='tcmoore3@degennes.vuse.vanderbilt.edu'
export ACCRE='mooretc2@vmplogin.accre.vanderbilt.edu'
export RAHMAN='tcmoore3@rahman.vuse.vanderbilt.edu'
export DRIF='tcmoore3@driffield.vuse.vanderbilt.edu'
export PERRY='mootimot@perry.engin.umich.edu'
export PICASSO='mtimc@picasso.engin.umich.edu'
export BRETT='mtimc@brett.engin.umich.edu'
export FLUX='mtimc@flux-login.arc-ts.umich.edu'
export DALI='mtimc@dali.engin.umich.edu'
export WARHOL='mtimc@warhol.engin.umich.edu'
export XSEDE='mootimot@login.xsede.org'
export STAMPEDE='mootimot@stampede2.tacc.utexas.edu'
export GREATLAKES='mtimc@greatlakes.arc-ts.umich.edu'
export BRIDGES2='mootimot@bridges2.psc.xsede.org'
export SUMMIT='mtimc@summit.olcf.ornl.gov'
export ANDES='mtimc@andes.olcf.ornl.gov'
export HODGES='mtimc@cheme-hodges.engin.umich.edu'
export DELTA='mootimot@dt-login01.delta.ncsa.illinois.edu'
export KALINE='mtimc@cheme-kaline.engin.umich.edu'
export ANVIL='x-mootimot@anvil.rcac.purdue.edu'

# aliases I use everywhere
alias ls='ls -lh --color=auto'  # human readable, color coded ls
alias jnb='jupyter-notebook'
alias vi='vim'

# MACHINE-SPECIFIC SETTINGS

# laptop-specific things (2016 macbook pro (peter cummings's old laptop))
if [[ $(hostname -s) == MacBook-Pro ]];
then
    export PS1='\$MBP:\w\n$(__git_ps1 "(%s)") $ '
    export BASH_SILENCE_DEPRECATION_WARNING=1
    export LSCOLORS=exgxcxdxcxegedabagacad
    alias ls='ls -lhG'
fi

# UM laptop, named cheme-skubal
if [[ -f $HOME/.machine_tims_laptop ]]; then
    export PS1='\$SKUBAL:\w\n$(__git_ps1 "(%s)") $ '
    export BASH_SILENCE_DEPRECATION_WARNING=1
    export LSCOLORS=exgxcxdxcxegedabagacad
    alias ls='ls -lhG'
fi

# kaline (mac mini desktop)
if [[ $HOSTNAME == cheme-kaline.engin.umich.edu ]]; then
    alias ls='ls -lhG'
fi

# hodges-specific things
if [[ $HOSTNAME == cheme-hodges ]]; then
    export PS1='\$HODGES:\w\n$(__git_ps1 "(%s)") $ '
fi

# brett-specific stuff
if [[ $HOSTNAME == brett.engin.umich.edu ]]; then
    export PS1='\$BRETT:\w\n$(__git_ps1 "(%s)") $ '
fi

# picasso-specific stuff
if [[ $HOSTNAME == picasso.engin.umich.edu ]]; then
    export PS1='\$PICASSO:\w\n$(__git_ps1 "(%s)") $ '
fi

# warhol-specific stuff
if [[ $HOSTNAME == warhol.engin.umich.edu ]]; then
    export PS1='\$WARHOL:\w\n$(__git_ps1 "(%s)") $ '
fi

# bridges2-specific things
if [[ $HOME == /jet/home/mootimot ]]; then
    export PS1='\$BRIDGES2:\w\n$(__git_ps1 "(%s)") $ '
    alias cdscr="cd /ocean/projects/dmr170059p/mootimot/"    
    umask 007
    alias q="squeue -u mootimot -o \"%.9i %.16j %.2t %.10M %.6D %B\""
    alias cdp="cd /ocean/projects/dmr170059p/mootimot/"
fi

# great-lakes-specific things
if [[ $CLUSTER_NAME == greatlakes ]]; then
    export PS1='\$GREATLAKES:\w\n$(__git_ps1 "(%s)") $ '
    export MYSCRATCH='/scratch/sglotzer_root/sglotzer5/mtimc'
    export MODULEPATH=/home/mtimc/software/modules:$MODULEPATH
    alias cdp='cd /scratch/sglotzer_root/sglotzer0/mtimc'
    alias q="squeue -u mtimc -o \"%.9i %.30j %.2t %.10M %.6D\""
fi

# perry-specific things
if [[ $HOSTNAME == perry.engin.umich.edu ]]; then
    export PS1='\$PERRY:\w\n$(__git_ps1 "(%s)") $ '
    umask 007
fi

# summit-specific things
if [[ $LMOD_SYSTEM_NAME == summit ]]; then
    export PS1='\$SUMMIT:\w\n$(__git_ps1 "(%s)") $ '
    export BASH_ENV=/ccs/home/mtimc/.bashrc
    export MYSCRATCH=/gpfs/alpine/mat110/scratch/mtimc
    alias cdscr="cd /gpfs/alpine/mat110/scratch/mtimc"
    module load git
    alias q='bjobs -u mtimc'
fi

# delta-specific things
if [[ $LMOD_SYSTEM_NAME == Delta ]]; then
    export PS1='\$DELTA:\w\n$(__git_ps1 "(%s)") $ '
    alias q='squeue -u x-mootimot'
    alias cdp='cd /scratch/bbgw/mootimot/'
fi

# anvil-specific settings
if [[ $RCAC_CLUSTER == anvil ]]; then
    export PS1='\$ANVIL:\w\n$(__git_ps1 "(%s)") $ '
    alias cdp='cd /anvil/scratch/x-mootimot'
    alias q="squeue -u mootimot -o \"%.9i %.30j %.2t %.10M %.6D %B\""
fi
