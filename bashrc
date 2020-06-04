# not quite sure what these do
CLICOLOR="YES"; export CLICOLOR
export LSCOLORS="dxGxFxdxCxDxDxhbadExExEx"

# aliases
alias xmgrace='xmgrace -free' # resize xmgrace window automatically
alias ls='ls -Glh'  # human readable, color coded ls
alias gromacs='source /usr/local/gromacs/bin/GMXRC'
alias jnb='jupyter-notebook'
alias injavis='java -jar $HOME/programs/injavis/bin/injavis.jar'

# environment variables
export MP_EDITOR=/usr/bin/vi

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

# path manipulation
export PATH=/Applications/VMD\ 1.9.2.app/Contents/vmd:$PATH
export PATH=${HOME}/anaconda/bin:$PATH

# make directory, change into it
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

# use rsync like scp
#alias scp="rsync -avhzP"
alias rsync="rsync -zz h --progress --partial"

# git autocompletion
source ~/.git-completion.bash

# show repository when in a git repo
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\$MBP:\w\n$(__git_ps1 "(%s)") $ '

# allow forward searching (may also stop terminal "freezing")
stty -ixon

# modules
source /usr/local/opt/modules/Modules/init/bash
