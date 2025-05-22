
if [ $# -ne 0 ]; then
    echo "Syntax error"
    exit 1
fi

echo -e "\n\nDirectory of `pwd`\n"

for f in *; do
    dt=`date -r $f "+%d-%m-%Y   %H:%M:%S"`
    
    if [ -d "$f" ]; then
        echo "$dt 	<DIR>   $f"
    else
        fs=`cat $f | wc -c`
        echo "$dt 	$fs   $f"
    fi
done
