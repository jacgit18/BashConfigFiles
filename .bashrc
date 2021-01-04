#             _  ____  ____           #
#            / |/  _ \/   _\          #
#            | || / \||  /            #
#         /\_| || |-|||  \__          #
#         \____/\_/ \|\____/          #
                  
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⣴⣦⡀⠄⠄⠄⠄⠄⠄⢀⣴⣷⡀⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⣸⣿⣿⠁⠄⠄⢀⡀⠄⠄⠈⣿⣿⣇⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⢻⣿⣷⢀⣠⣶⣿⣿⣶⣄⡀⣾⣿⡟⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⣀⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢁⣀⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠐⠶⣿⣿⣿⣿⣌⠻⣿⣿⣿⣿⣿⣿⣿⣿⠟⣡⣿⣿⣿⣿⠶⠂⠄⠄⠄
#⠄⠄⠄⠄⠄⣦⡬⢙⠛⠿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣾⠿⠛⡋⢥⣴⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⢠⣿⣇⢸⣿⣷⣦⣍⠻⣿⣿⣿⣿⠟⣩⣴⢾⣿⡇⣸⣿⡄⠄⠄⠄⠄
#⠄⠄⠄⢀⣾⣿⣿⢸⣿⣟⠻⣿⣷⣦⡹⢏⣴⣾⣿⠏⢻⣿⡇⣿⣿⣷⡀⠄⠄⠄
#⠄⠄⣠⣾⣿⣿⣿⢸⣿⣿⢀⡀⠹⣿⣷⣿⣿⠏⠵⣚⣾⣿⡇⣿⣿⣿⣷⣄⠄⠄
#⢴⣾⣿⣿⣿⣿⣿⡈⣿⣿⡸⣿⣷⣶⣶⣶⣶⣖⣾⣿⣿⣿⢁⣿⣿⣿⣿⣿⣷⡦
#⠈⢻⣿⣿⣿⣿⣿⣧⠸⣿⣧⡉⢻⣿⣿⣿⣿⡟⠋⣩⣥⠆⣼⣿⣿⣿⣿⣿⡟⠁
#⠄⠄⠙⣿⣿⣿⣿⣿⣧⡙⣿⣷⣼⣿⣿⣿⣿⣧⣾⣿⢋⣼⣿⣿⣿⣿⣿⠋⠄⠄
#⠄⠄⠄⠈⠻⣿⣿⣿⣿⣷⣌⠻⣿⣿⡟⣿⣿⣿⡿⣡⣾⣿⣿⣿⣿⠟⠁⠄⠄⠄
#⠄⠄⠄⠄⠄⠈⠻⡿⠃⣿⣿⣷⣌⠻⡇⣿⠟⣩⣾⣿⣿⠘⢿⠟⠁⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠻⣿⣿⣷⣦⣴⣾⣿⣿⠟⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢈⣽⣿⣿⣿⣿⣯⡁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄



# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

### ALIASES ###
# root privileges
alias c="clear"
alias x="exit"
alias update="sudo aptitude update"
alias upgrade="sudo aptitude upgrade"
alias ls="lsd -a"
alias lsd="lsd -la"
alias install="sudo apt install $1"
alias appinstall="sudo aptitude install $1"
alias aptitude="sudo aptitude $1"
alias i="install"
alias s="sudo"
alias doas="doas --"

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# vim and emacs
alias vim="nvim"
alias em="/usr/bin/emacs -nw"
alias emacs="emacsclient -c -a 'emacs'"

# pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Changing "ls" to "exa"
#alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias lynx='lynx -cfg=~/.lynx/lynx.cfg -lss=~/.lynx/lynx.lss -vikeys'
alias vifm='./.config/vifm/scripts/vifmrun'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias status='git status'
alias tag='git tag'
alias newtag='git tag -a'

# shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="sudo reboot"

# Merge Xresources
alias merge='xrdb -merge ~/.Xresources'

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

# switch between shells
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

# bare git repo alias for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/GitBare/ --work-tree=$HOME'

# termbin
alias tb="nc termbin.com 9999"

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

### RANDOM COLOR SCRIPT ###
#/opt/shell-color-scripts/colorscript.sh random


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

### EXPORT
export PATH="/home/jac/mongodb/mongodb-linux-x86_64-2.4.9/bin:$PATH"
export PATH="$PATH:`pwd`/flutter/bin"
#export PATH="$PATH:`pwd`/snap/flutter/current/bin"
export PATH="$PATH:/home/jac/flutter/bin"
#export PATH="$PATH:/home/jac/snap/flutter/common/flutter/bin"
export PATH="$PATH:/home/jac/tools/bin"
export ANDROID_HOME="/home/jac/Android/Sdk"
export PATH="$PATH:/home/jac/script"
export PATH="$PATH:/usr/lib/jvm/java-1.8.0-openjdk-amd64/bin"
#export PATH="$PATH:/usr/lib/jvm/java-1.8.0-openjdk-amd64/bin: /opt/Derby-10.15/bin"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export TERM="xterm-256color"              # getting proper colors
export HISTCONTROL=ignoredups:erasedups   # no duplicate entries
export ALTERNATE_EDITOR=""                # setting for emacsclient
export EDITOR="emacsclient -t -a ''"      # $EDITOR use Emacs in terminal
export VISUAL="emacsclient -c -a emacs"   # $VISUAL use Emacs in GUI mode

# sets vim as manpager
export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""

### SET VI MODE IN BASH SHELL
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### PROMPT
PS1='[\u@\h \W]\$ '

### PATH
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

### CHANGE TITLE OF TERMINALS
case ${TERM} in
  xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|alacritty|st|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
        ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
    ;;
esac

### SHOPT
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # checks term size when bash regains control

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
alias config='/usr/bin/git --git-dir=/home/jac/bashDotFiles/ --work-tree=/home/jac'
