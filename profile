export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CACHE_HOME="$HOME"/.cache

export PATH="$XDG_CONFIG_HOME"/scripts:"$XDG_DATA_HOME"/bin:"$HOME/.local/bin":"$PATH"

#export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
#export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
#export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

#export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

export GOPATH="$XDG_DATA_HOME"/go

export GNUPGHOME="$XDG_DATA_HOME"/gnupg

export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

export WGETRC="$XDG_CONFIG_HOME"/wgetrc

export PYTHONSTARTUP="$XDG_CONFIG_HOME"/python/startup.py
export PYTHON_EGG_CACHE="$XDG_CACHE_HOME"/python-eggs

unset SSH_ASKPASS
# test $DISPLAY && export SSH_ASKPASS="/usr/bin/ksshaskpass" || unset SSH_ASKPASS

# start gpg-agent
gpg-agent --daemon --enable-ssh-support 2>/dev/null
export SSH_AGENT_PID=
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR"/gnupg/S.gpg-agent.ssh

# security! except this breaks pip with sudo so add `Defaults umask 0022` and `Defaults umask_override` to sudoers config
umask 027
