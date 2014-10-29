umask 077

# add directories to a PATH, if they exist and are not already in the PATH
# set second parameter to "1" to prepend component
function idempotent_path_add {
	DIR="$1"
	PREPEND=$2
	if ([ -d "$DIR" ] && [[ ! "$PATH" =~ (^|:)"$DIR"(:|$) ]])
	then
		if [ $PREPEND ]
		then
			PATH="$DIR:$PATH"
		else
			PATH="$PATH:$DIR"
		fi
	fi
}

idempotent_path_add "$HOME/bin" 1
idempotent_path_add "/usr/lib/ccache" 1
idempotent_path_add "$HOME/data/code/scala-2.11.2/bin"
idempotent_path_add "$HOME/data/code/activator-1.2.10-minimal"

export PATH

if [ -f ~/.aliases ] ; then
	. ~/.aliases
fi

export BOOST_ROOT=/home/jon/data/code/boost_1_56_0
export LD_LIBRARY_PATH=$BOOST_ROOT/stage/lib
