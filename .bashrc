# PS1="\$(~/.rvm/bin/rvm-prompt) $PS1"
# PS1="\$(~/.rvm/bin/rvm-prompt i v p g) $PS1"
PS1="[\$(~/.rvm/bin/rvm-prompt s i v g)] $PS1"
export PS1

PATH=$PATH:$HOME/.rvm/bin:$HOME/bin # Add RVM to PATH for scripting

alias h=history
alias tgvim='gvim scp://${TARGET_IP}//mib/'
alias g=gvim
alias ll='ls -l'
alias lal='ls -al'
alias fix_dropbox='echo 100000|sudo tee /proc/sys/fs/inotify/max_user_watches'
alias vimsamples='(cd ~; gvim simple_tmux_script.sh simple_vimoutliner_example1.otl cleanup_diproperties.rb HALProxyCfg.java markdown_example.md simple_drawit_example_cg.txt)'
#alias vimtetris='gvim +"so ~/tetris.vim" +",te" '
alias vimtetris='gvim +"so ~/tetris.vim|:cal <SNR>140_Main()"'


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

