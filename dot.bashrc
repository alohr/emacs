export EDITOR=vi

p=$(/bin/launchctl getenv PATH)

# Local
export PATH=$PATH:/usr/local/bin:/usr/local/sbin

# Anaconda
# export PATH="/Users/andreas/anaconda3/bin:$PATH"
# Qt
#export QTDIR=$HOME/Qt/5.8/clang_64
#export PATH=$QTDIR/bin:$PATH

export QTDIR=/usr/local/Cellar/qt/5.14.0
export PATH=$QTDIR/bin:$PATH

# /bin/launchctl setenv PATH $PATH

# Fix Python shit
#export LC_ALL=en_US.UTF-8
export LC_ALL=C
export LANG=$LC_ALL

alias ll="ls -la"
alias cdm="cd /Volumes/Green/Users/andreas/Music"
alias ssh-jacktrip="ssh -Y 45.77.52.145"

bind 'set completion-ignore-case on'	# case-insensitive auto-fill correction
bind 'set show-all-if-ambiguous on'	# show full list if more than one match
bind 'set mark-directories off'		# don't auto-append the trailing slash
