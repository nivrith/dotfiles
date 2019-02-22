# Locale
export LC_ALL=en_US.UTF-8
export LANG="en_US"

# n, Node version manager (http://git.io/n-install-repo)
export N_PREFIX="$HOME/n"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nano'
else
	export EDITOR='code'
fi