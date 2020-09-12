# https://www.cyberciti.biz/faq/unix-linux-bash-script-check-if-variable-is-empty/

if [ -z "$var" ]
then
      echo "\$var is empty"
else
      echo "\$var is NOT empty"
fi

[ -z "$var" ] && echo "Empty"
[ -z "$var" ] && echo "Empty" || echo "Not empty"


## set _JAIL
_JAIL="/path/to/apache"
 
## find out if it is empty or not ##
[  -z "$_JAIL" ] && echo "Empty: Yes" || echo "Empty: No"


## set _JAIL
_JAIL="/path/to/apache"
 
## find out if it is empty or not ##
[[ -z "$_JAIL" ]] && echo "Empty" || echo "Not empty"
