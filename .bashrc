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

# OSX specific aliases
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO;  killall Finder /System/Library/CoreServices/Finder.app"


# Set editor to be vim
export EDITOR=vim;

# Larger bash history and better ignore
export HISTSIZE=50000000;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="[ ]*:l:ls:cd:h:history:pwd:exit:date:* --help:* -help";

# Don't clear the screen after quitting man
export MANPAGER="less -X";

