# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export ANDROID_HOME="$HOME/tools/Android/Sdk"
export ANDROID_STUDIO="/user/local/android-studio"
export JBOSS_HOME="/home/dani/tools/wildfly"
export MAVEN="/home/dani/tools/maven"
export VECTR="$HOME/tools/Vectr/"
export INTELLIJ="$HOME/tools/IntelliJ"
export PATH="$PATH:$ANDROID_STUDIO/bin"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$MAVEN/bin"
export PATH="$PATH:$VECTR"
export PATH="$PATH:$INTELLIJ/bin"
export PATH="$PATH:/home/dani/tools/go/bin"
export PATH="$PATH:/home/dani/tools/stremio"
