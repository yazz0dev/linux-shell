if [ $# -ne 2 ]; then
exit 1
fi

if grep -q "$2" "$1"  
then
grep -v "$2" "$1" > tmp
mv tmp "$1"
cat $1
else
fi
exit 0 
