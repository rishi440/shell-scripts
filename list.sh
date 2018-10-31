#rremesh
#Last update 05/01/18

if [[ $# > 2 ]] ; then
    echo 'Error too many arguments, if you are passing multiple arguments like -a -h, please use -ah (combine them instead)'
    exit 0
fi

ls -l $1 $2| awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/) \
             *2^(8-i));if(k)printf("%0o ",k);print}' 