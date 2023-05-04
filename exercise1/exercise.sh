file=$1

while [ -z $file ]
do
    read -p "The filename is empty, please input a filename
" file
done

if [[ ! $file =~ '*.sh' ]]
then
    file=$file'.sh'
fi

touch $file

cat $0 > $file

if [[ ! -x $file ]]
then
    echo "The file $file is not executable, changing permissions..."
    chmod ugo+x $file
fi

./$file