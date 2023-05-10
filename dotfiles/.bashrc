# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source ~/.shells/defaults
source ~/.shells/functions
source ~/.shells/exports
source ~/.shells/alias
source ~/.shells/prompt   # Fancy prompt with time and current working dir
source ~/.shells/git      # Conveniences - Display current branch etc
source ~/.shells/k8s_helm
#echo "Hardware Information:"
#sensors  # Needs: 'sudo apt-get install lm-sensors'
#uptime   # Needs: 'sudo apt-get install lsscsi'
#lsscsi
#free -mh

# # Add JBang to environment
# alias j!=jbang
# export PATH="$HOME/.jbang/bin:$PATH"

# # Generated for envman. Do not edit.
# [ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


export PATH=/home/subbarat/.jbang/bin:/opt/maven/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/subbarat/.local/bin:/home/subbarat/bin:/usr/local/go/bin:/home/subbarat/go/bin
export M2_HOME=/opt/maven/
export GOPATH=/home/subbarat/go/
