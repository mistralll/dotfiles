# ssh-add
ssh-add ~/.ssh/github
ssh-add ~/.ssh/bitbucket

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Java path
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"

# ターミナルを綺麗にする
export LANG=ja_JP.UTF-8
export PROMPT="%F{50}%C%f %F{11}>%f "
export RPROMPT="%F{245}%~ %T%f"
alias reload="exec $SHELL -l"
alias rm='rm -r'
