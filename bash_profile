# Set color variables
MY_DEFAULT_COLOR="\[\e[0m\]"
MY_GRAY_COLOR="\[\e[0;37m\]"
MY_PINK_COLOR="\[\e[0;35m\]"
MY_GREEN_COLOR="\[\e[0;32m\]"
MY_YELLOW_COLOR="\[\e[0;33m\]"
MY_RED_COLOR="\[\e[0;31m\]"
if [ `id -u` == '0' ]; then
  MY_USER_COLOR=$MY_RED_COLOR
else
  MY_USER_COLOR=$MY_PINK_COLOR
fi

# My work issue has a long hostname used for inventory
# Uncomment the second line if you want to customize locally
# your hostname
MY_HOSTNAME='\h'
#MY_HOSTNAME='**custom hostname**'

# Set the prompt to show the current git branch:
function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}
export PS1="${MY_USER_COLOR}\u\
${MY_GRAY_COLOR}@${MY_YELLOW_COLOR}${MY_HOSTNAME}\
${MY_GRAY_COLOR}:${MY_GREEN_COLOR}\W\
${MY_GRAY_COLOR}\$(parse_git_branch)${MY_DEFAULT_COLOR}\$ "

# Aliases
alias ll='ls -aGhl'

# Add MacVim to path
export PATH=$PATH:/Applications/MacVim.app/Contents/bin
