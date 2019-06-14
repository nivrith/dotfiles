
# Enable aliases to be sudo’ed
alias sudo="sudo "

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# Shortcuts
alias o="open"
alias oo="open ."
alias e="$EDITOR"

# Git
alias pull="git pull"
alias push="git push"
alias checkout="git checkout"

# Download file and save it with filename of remote file
alias get="curl -O -L"

# Cd to Git repository root folder
gr() {
  cd "./$(git rev-parse --show-cdup 2>/dev/null)" 2>/dev/null
}



alias polyrithm="cd ~/Documents/files/polyrithm"
alias lumi="cd ~/Documents/files/lumi"
alias files="cd ~/Documents/files"

