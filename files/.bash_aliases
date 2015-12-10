
# Miscellaneous
alias c="clear"
alias h="cd ~"
alias ..="cd .."
alias cd..="cd .."
alias cd-="cd -"
alias up="cd .."
alias up2="cd ../.."
alias up3="cd ../../.."
alias up4="cd ../../../.."
alias up5="cd ../../../../.."
alias grep="grep --color"
alias tf="tail -fn200"
alias h?="history | grep"

# Supervisor
alias spc="supervisorctl"
alias spcr="supervisorctl restart"
alias spcs="supervisorctl status"
function spcl { tail -fn200 /var/log/supervisor/${1}*; }

# Rights
alias chmod644="chmod -R u+rwX,go+rX,go-w"
alias chmod660="chmod -R ug+rwX,o-rwx"
alias chmod600="chmod -R u+rwX,go-rwx"
function chownwww() { sudo chown -R www-data:www-data ${1:-*}; }
