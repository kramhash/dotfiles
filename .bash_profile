export ANDROID_HOME=$HOME/Applications/android-sdk-macosx
export PATH=$HOME/works/flex/bin:$HOME/bin:$HOME/usr/local/sbin:$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
# export PATH=$HOME/works/flex/bin:$HOME/bin:$HOME/.rbenv/bin:$HOME/.nodebrew/current/bin:/usr/local/sbin:$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# eval "$(rbenv init -)"


export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
# export GOROOT_BOOTSTRAP=$HOME/.anyenv/envs/goenv/versions/1.4

export CLICOLOR=1

export TERM=xterm-256color

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# export PYENV_ROOT="${HOME}/.pyenv"

alias tsung_stats="/usr/local/opt/tsung/lib/tsung/bin/tsung_stats.pl"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias treport="/usr/local/opt/tsung/lib/tsung/bin/tsung_stats.pl; chrome report.html"
alias mongostart="sudo mongod --fork --dbpath /var/lib/mongodb --logpath /var/log/mongodb.log"
alias dstat_full="dstat -Tclmdrn"

export EDITOR=subl
eval "$(direnv hook bash)"



if [ -d $HOME/.anyenv ] ; then
	export PATH="$HOME/.anyenv/bin:$PATH"
	eval "$(anyenv init -)"

	for D in `ls $HOME/.anyenv/envs`
	do
		export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
	done
fi
eval "$(pyenv virtualenv-init -)"

#[ -s "/Users/mark/.dnx/dnvm/dnvm.sh" ] && . "/Users/mark/.dnx/dnvm/dnvm.sh" # Load dnvm

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


alias findrealm="find ~/Library/Developer/CoreSimulator/Devices/$(ls -t1 ~/Library/Developer/CoreSimulator/Devices/ | head -1)/data/Containers/Data/Application/ -name \*.realm	"
export PATH="/usr/local/opt/tomcat@8.0/bin:$PATH"


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi
