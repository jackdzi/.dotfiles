fpath+=($HOME/.zsh/pure)


alias cdd='cd $(find * -type d | fzf)'
alias pdf='termpdf.py'
alias sl='~/Documents/gitlib/sl/sl'
alias z='zathura $(fzf)'
alias p='pdf $(fzf)'
alias mkcd='mkdir_and_cd() { mkdir -p "$1" && cd "$1"; }; mkdir_and_cd'
# alias code='f() { file=$(find * -type d | fzf); (cd "$file" && neovide); }; f'
alias ks='kitty-sesh'
alias tex='texmv() { mkdir -p "$1" && cd "$1" && cp ~/Templates/Latex/letterfonts.tex ~/Templates/Latex/macros.tex ~/Templates/Latex/preamble.tex ~/Templates/Latex/template.tex . && mv template.tex "$1.tex";}; texmv'
alias sioyek='flatpak run com.github.ahrm.sioyek'
alias tm='tmux_attach() { tmux attach -t "$1"}; tmux_attach'

# Add the function to your .zshrc
export BAT_THEME="ansi"
# $ venv myvirtualenv   # activates venv
# $ deactivate          # deactivates venv
# $ rmvenv myvirtualenv # removes venv

export VENV_HOME="$HOME/.virtualenvs"
[[ -d $VENV_HOME ]] || mkdir $VENV_HOME

lsvenv() {
  ls -1 $VENV_HOME
}

venv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      source "$VENV_HOME/$1/bin/activate"
  fi
}

mkvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      python3 -m venv $VENV_HOME/$1
  fi
}

rmvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      rm -r $VENV_HOME/$1
  fi
}

bindkey -v
source ~/.zsh/zsh-gpt/zsh-gpt.plugin.zsh

OPENAI_API_KEY=$(.keys/gpt.txt)

autoload -U promptinit; promptinit

prompt pure
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[arg0]=fg=magenta

export PATH=$PATH:~/.cargo/bin
macchina
#-o host -o distribution -o kernel -o local-ip -o resolution -o uptime -o backlight -o processor-load -o memory -o battery -o disk-space

export PATH=$PATH:/home/jdzialo/.spicetify
export PATH=$PATH:~/Documents/gitlib/termpdf.py
