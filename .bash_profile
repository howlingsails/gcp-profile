#!/bin/bash
####################################################
#                REMEMBER TO BACKUP                #
####################################################
#

source ~/.bash_aliases
echo -e "Loaded Aliases"
source ~/.bash_commands
source ~/.bash_installs


# Not working talk to ⥄ 𝓜⋀ℛ⊏⊙ 𝛧 ⥂
# source ~/.bash_epoch

export LSCOLORS=GxFxCxDxBxegedabagaced


# Get the IP Address parsed into the variable THEIP
THEIP=$(ifconfig  | grep 'inet ' | head -n2 | grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $2}')

# Automatically Populate Useful Command and Systems to connect too
usefulCommands=`getUsefulCommands`


cat ~/.bash_tebra

## Clear and Prep for drawing cap10bill random logo and key information
#clear
echo -e "\n\n\n"

# ###########
# output useful hints and information
# ###########
echo "          ___"
echo -e "${BWhite}Welcome d(❂‿❂)b " $USER " [Timezone:${BYellow}" $TZ "${BWhite}]"
echo -e "------------------------------------ ${White}"
echo -e "${BCyan}*** SAVE ME ***${BYellow} PRESS g"
echo -e "${BGreen}JAVA_HOME:${White} ${JAVA_HOME}    ${BGreen}TOMCAT:${White} ${CATALINA_HOME}"
echo -e "${BGreen}namespace:${White} ${namespace}    ${BGreen}${White}"
echo -e ""
echo -e "${BYellow}\nAutomation: 	${White}"
echo "${usefulCommands}"
echo -e ""
echo -e "${BYellow}Connect to Projects: 	anySystem ${White}"




## Quick Entry into bash profiles and reloading using source
function bsh() {
    alias bsh='vim ~/dev2/_automation/bash-mac/.bash_profile'
    echo "Remember to src"
}


function src() {
    # Enable Write
    chmod 640 ~/.bash*
    echo -e "Copying From ~/dev2/_automation/gcp-profile"
    sleep 1
    for f in /Users/bill.nortman/dev2/_automation/gcp-profile/.bash*; do  if [ -f $f ] ; then cp -f "$f" /Users/bill.nortman/; fi; done
    echo "Copy Profiles Complete"
    # Disable Write
    chmod 440 ~/.bash*
    
    sleep 1
    # Reset to the current profile
    echo -e "\nResourcing"
    source ~/.bash_profile
    echo -e "\nSource Reloaded"
}

alias g='getUsefulCommands'




alias ls='ls -Gpw'			    # Preferred ‘ls’ implementation
#alias cpp=`cp`
#alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias lll='ls -FGlahp | grep --color=always "^d" && ls -FGlahp  | grep --color=always "^-" && ls -FGlahp | grep --color=always "^l" '
alias ll='ls -FGlahp'
alias hs='history'

#alias llt = 'find . -type f -mmin -60 -print0 | xargs -0 /bin/ls -ltr'
# alias less='less -FSRXc'                    # Preferred 'less' implementation

function cd() { 
    builtin cd "$@"; 
    ls -Gpw; # Always list directory contents upon 'cd'
    if [ -f "package.json" ]; then
        webDevInfo
    fi
    
}               
cdorg() { builtin cd "$@"; }
# alias edit='subl'                           # edit:         Opens any file in sublime editor
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear cd dterminal display
# alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive

trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

export DISABLE_JAMMIT=1 #TODO Why did I put this?



