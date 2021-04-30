
source ~/dotfiles/common/nvm-auto-use.sh

# #
# # Run 'nvm use' automatically every time there's
# # a .nvmrc file in the directory. Also, revert to default
# # version when entering a directory without .nvmrc
# #
# upsearch () {
#   slashes=${PWD//[^\/]/}
#   directory="$PWD"
#   for (( n=${#slashes}; n>0; --n ))
#   do
#     test -e "$directory/$1" && echo "$directory/$1" && return 
#     directory="$directory/.."
#   done
# }

# nvm_autouse() {
# # if [[ $PWD == $PREV_PWD ]]; then
# #    return
# # fi

# PREV_PWD=$PWD
# if upsearch ".nvmrc" ; then
# # if [[ -f ".nvmrc" ]]; then
#    nvm use 
#    NVM_DIRTY=true
# elif [[ $NVM_DIRTY = true ]]; then
#    nvm use default
#    NVM_DIRTY=false
# fi
# }
# nvm_autouse &>/dev/null
# chpwd_functions=(${chpwd_functions[@]} "nvm_autouse")

####
# ZSH function to auto-switch to correct Node version
#   https://gist.github.com/callumlocke/30990e247e52ab6ac1aa98e5f0e5bbf5
#
# - Searches up your directory tree for the closest .nvmrc, just like `nvm use` does.
#
# - If you are already on the right Node version, IT DOES NOTHING, AND PRINTS NOTHING.
#
# - Works correctly if your .nvmrc file contains something relaxed/generic,
#   like "4" or "v12.0" or "stable".
#
# - If an .nvmrc is found but you have no installed version that satisfies it, it
#   prints a clear warning, so you can decide whether you want to run `nvm install`.
#
# - If no .nvmrc is found, it does `nvm use default`.
# 
# Recommended: leave your default as something generic,
# e.g. do `nvm alias default stable`
####


# Run the above function in ZSH whenever you change directory
autoload -U add-zsh-hook
add-zsh-hook chpwd auto-switch-node-version
auto-switch-node-version