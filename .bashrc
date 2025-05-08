# @(#).bashrc 
##  Source global definitions: The next line must be the first non-commented line.
[ -f /etc/bashrc ] && . /etc/bashrc  #this is key to get syntax=on work in editor

################################################################################
##  All non-interactive shells will exit on the next line.
##  Nothing after this line is used by batch shell scripts.
if [ -z "$PS1" ]; then return; fi

#----------  for interactive shells ------------------------------------------------
#source /etc/profile.d/modules.sh #this is not needed, but keep for reference

# Setting default file permissions to 644
umask 022

# set the timezone to Denver
export TZ="America/Denver"

# Control shell history settings
export HISTSIZE=200 #history in a session
export HISTFILESIZE=100 #history across logins

# Disable automatic rename of a terminal title
unset PROMPT_COMMAND 

# Define the tab autocompletion behavior
bind "set show-all-if-ambiguous on" #display a list of matches at the first tab

# Set TERM to xterm-256color
export TERM=xterm-256color
# change the orphan link color to match xterm
export LS_COLORS="$LS_COLORS:or=1;31"

# Setting up the prompt PS1
yellow="\001$(tput setaf 3)\002"
dim="\001$(tput dim)\002"
reset="\001$(tput sgr0)\002"
PS1="[${yellow}\h${reset} \W]$ "
unset yellow dim reset

# Setting up favorite aliases
alias ls="ls -F --color=auto"
alias h="history"
alias rm="rm -i"
alias mv="mv -i"
alias pwd="pwd -L"
alias cp="cp -i"
alias resource='source ~/.bashrc'
alias ta='tmux a'
alias mll="module list"
alias ll='ls -l'
alias rehash='hash -r'
alias jupyter8800='jupyter lab --no-browser --port=8800'

# Setting up favorite functions which can run as a command 
scp2j(){ scp -rp "$1" Guoqing.Ge@dtn-jet.boulder.rdhpcs.noaa.gov:"$2";}
scp4j(){ scp -rp      Guoqing.Ge@dtn-jet.boulder.rdhpcs.noaa.gov:"$1" "$2";}
scp2h(){ scp -rp "$1" Guoqing.Ge@dtn-hera.fairmont.rdhpcs.noaa.gov:"$2";}
scp4h(){ scp -rp      Guoqing.Ge@dtn-hera.fairmont.rdhpcs.noaa.gov:"$1" "$2";}
scp2o(){ scp -rp "$1" gge@orion-dtn.hpc.msstate.edu:"$2";}
scp4o(){ scp -rp      gge@orion-dtn.hpc.msstate.edu:"$1" "$2";}
