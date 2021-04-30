source ~/dotfiles/bash/env
source ~/dotfiles/bash/config
source ~/dotfiles/bash/aliases
source ~/dotfiles/common/nvm-auto-use.sh
#
# Run 'nvm use' automatically every time there's
# a .nvmrc file in the directory. Also, revert to default
# version when entering a directory without .nvmrc
#
nvm_autouse() {
   if [[ $PWD == $PREV_PWD ]]; then
      return
   fi


   PREV_PWD=$PWD
   if [[ -f ".nvmrc" ]]; then
      nvm use
      NVM_DIRTY=true
   elif [[ $NVM_DIRTY = true ]]; then
      nvm use default
      NVM_DIRTY=false
   fi
   auto-switch-node-version
}

auto-switch-node-version &>/dev/null # Auto swith node 

export PROMPT_COMMAND=auto-switch-node-version