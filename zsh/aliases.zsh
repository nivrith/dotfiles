
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


# Download file and save it with filename of remote file
alias get="curl -O -L"

# Cd to Git repository root folder
gr() {
  cd "./$(git rev-parse --show-cdup 2>/dev/null)" 2>/dev/null
}