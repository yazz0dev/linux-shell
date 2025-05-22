if [ $# -ne 2 ]; then
echo "Syntax is $0 <file> <word to delete>"
exit 1
fi

if grep -q "$2" "$1"  
then
grep -v "$2" "$1" > tmp
mv tmp "$1"
echo "$2 deleted from $1 succesfully.\n\nHere is the new file content:"
cat $1
else
echo "error deleting $2 from $1"
fi
exit 0 
