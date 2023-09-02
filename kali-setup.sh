## Shell script to customize a fresh kali install
# Requires an internet connection

# Create ~/.zsh_aliases
echo "Setting up ~/.zsh_aliases.."
if ! [ -f ~/.zsh_aliases ]; then
    cat <<EOF > ~/.zsh_aliases
## Linux Aliases
alias upgrade='sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y'
alias reload='source ~/.zshrc'


## Useful Command Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


EOF
fi


## Create tools directory and add to path
mkdir -p /opt/tools
echo "export PATH=$PATH:/opt/tools" >> ~/.zshrc

## Install useful tools

# Linpeas
echo "Installing LinPEAS.."
curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh -o /opt/tools/linpeas.sh && chmod 755 /opt/tools/linpeas.sh


# Wrapping up

# Reload shell configuration
source ~/.zshrc

# Update distro and packages
update
