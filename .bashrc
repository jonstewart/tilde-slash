umask 077

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PATH

if [ -f ~/.aliases ] ; then
	. ~/.aliases
fi

export BOOST_ROOT=/home/jon/data/code/boost_1_55_0
export LD_LIBRARY_PATH=$BOOST_ROOT/stage/lib
