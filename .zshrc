# ssh-add
ssh-add ~/.ssh/github 2> ~/dotfiles/null
ssh-add ~/.ssh/bitbucket 2> ~/dotfiles/null

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Java path
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv > ~/dotfiles/null
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# Python shortcuts
python3=$(pyenv install -l | grep -v '[a-zA-Z]' | grep -e '\s3\.?*' | tail -1)
alias mkvenv='python3 -m venv --prompt . .venv'
alias activate_venv='source .venv/bin/activate'

# set Ruby version
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# cocoapods
export PATH="/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"

# ターミナルを綺麗にする
export LANG=ja_JP.UTF-8
export PROMPT="%F{50}%C%f %F{11}>%f "
export RPROMPT="%F{245}%~ %T%f"
alias reload="exec $SHELL -l"
alias  rm='rm -r'

#yt-dlp shortcuts
alias ytdl-m4a='yt-dlp -f m4a'
