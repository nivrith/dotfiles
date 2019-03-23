# Prepend $PATH without duplicates
function _prepend_path() {
	if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
		PATH="$1:$PATH"
	fi
}

# Construct $PATH
# 1. Default paths
# 2. ./node_modules/.bin - shorcut to run locally installed Node bins
# 3. Custom bin folder for n, Ruby, CoreUtils, dotfiles, etc.
PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:./node_modules/.bin'
[ -d "$N_PREFIX/bin" ] && _prepend_path "$N_PREFIX/bin"
[ -d /usr/local/bin ] && _prepend_path "/usr/local/bin"
[ -d /usr/local/opt/ruby/bin ] && _prepend_path "/usr/local/opt/ruby/bin"
[ -d /usr/local/opt/coreutils/libexec/gnubin ] && _prepend_path "/usr/local/opt/coreutils/libexec/gnubin"
[ -d ~/dotfiles/bin ] && _prepend_path "$HOME/dotfiles/bin"
[ -d ~/bin ] && _prepend_path "$HOME/bin"

export PATH

if [[ -d "/snap/bin" ]]; then
  export PATH=$PATH:/snap/bin
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH


export PATH=$PATH:~/.local/bin

if [[ -d "$HOME/Library/Haskell/bin" ]]; then
  export PATH="$HOME/Library/Haskell/bin:$PATH"
fi


# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH=$PATH:~/.composer/vendor/bin

if [[ -d "~/Applications/XAMPP/bin" ]]; then
  export PATH=$PATH:~/Applications/XAMPP/bin
fi

