# Navigation
alias ..="cd .."
alias ~="cd ~"

# Shortcuts
alias dl="cd ~/Downloads"
alias h="history"
alias hg="history | grep"

# ls colours (OS dependent)
if ls --color > /dev/null 2>&1; then    # GNU ls
	colorflag="--color"
else                                    # MaxOS ls
	colorflag="-G"
fi

# List in long format
alias ls="ls -alf ${colorflag}"

# Enable sudo on aliases
alias sudo="sudo "

# Set editor to be vim
export EDITOR=vim;

# Larger bash history and better ignore
export HISTSIZE=50000000;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="[ ]*:l:ls:cd:h:history:pwd:exit:date:* --help:* -help";

# Don't clear the screen after quitting man
export MANPAGER="less -X";

# Color variables for prompt
RCol='\[\e[0m\]'    # Text reset
Red='\[\e[0;31m\]'  # Red
Gre='\[\e[0;32m\]'  # Green
Yel='\[\e[0;33m\]'  # Yellow
Blu='\[\e[0;34m\]'  # Blue
Pur='\[\e[0;35m\]'  # Purple
Cya='\[\e[0;36m\]'  # Cyan
Whi='\[\e[0;37m\]'  # White

# Host specific commands
case $HOSTNAME in
    PC0Q6ROW | PC0NWAY2)
        export PATH=/c/Program\ Files/Git/usr/bin/:$PATH
        ;;
    Boris.local)
        alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
        alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO;  killall Finder /System/Library/CoreServices/Finder.app"
        PS1="${Gre}\u@\h:${RCol}\W\$ "
        ;;
    archie)
        PS1="${Red}\u@\h:${RCol}\W\$ "
        ;;
    bob)
        PS1="${Blu}\u@\h:${RCol}\W\$ "
        ;;
esac

