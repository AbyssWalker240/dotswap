# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git git-prompt)

source $ZSH/oh-my-zsh.sh

PROMPT="%B%F{012}%n%f%b %F{012}%1~%f %(?.%F{227}❯%f%F{191}❯%f%F{154}❯%f.%F{227}❯%f%F{214}❯%f%F{202}❯%f)  "
#RPROMPT="$(git_super_status)"   #    %F{7}%t%f"

alias cd="z"
alias home="z ~"
alias h="z ~"
alias v="vim"
alias vi="vim"
alias m="micro"
alias mz=". /home/rosetta/scripts/bash/mz"

eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

rainbow_quote () {
	fortune linux -s | figlet -f ~/git/figlet-fonts/3d | lolcat -p 15 -S 100;
	echo
}

small_quote () {
	fortune linux -s | lolcat -p 15 -S 100;
	echo
}

if [[ $TQUOTE == "true" ]]; then
	small_quote
fi

#source ~/scripts/diskUsageDisplay/test.sh

#df -h -x tmpfs -x efivarfs -x vfat -x devtmpfs --output=target,used,avail,pcent
#echo

echo "\u001b[35mDon't forget to use jrnl\u001b[0m
"

export PATH="$HOME/.local/bin:$PATH"
