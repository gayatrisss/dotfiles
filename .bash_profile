export VM_DEVELOP=true
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(chef shell-init bash)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then                            
. $(brew --prefix)/etc/bash_completion                                                                         
fi                                                                                                             
                                                                                                               
                                                                                                               
GIT_PS1_SHOWDIRTYSTATE=true                                                                                    
                                                                                                               
export PS1='\[\e[0;35m\][\w]\[\e[0m\] \[\e[0;34m\]$(__git_ps1 "(%s)")\[\e[0m\]\n\[\e[0;32m\]-> \[\e[0m\]'
                                                                                
export CLICOLOR=1                                                                                              
                                                                                                               
export LSCOLORS=ExFxBxDxCxegedabagacad  

[ -f ~/.fzf.bash ] && source ~/.fzf.bash && source ~/.bashrc
