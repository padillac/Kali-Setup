## Shell script to customize a fresh kali install

# Create ~/.zsh_aliases
if ! [ -f ~/.zsh_aliases ]; then
    cat <<EOF > ~/.zsh_aliases
## Linux Aliases
alias upgrade='sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y'
alias reload='source ~/.zshrc'


EOF
fi





# Reload shell configuration
source ./zshrc
