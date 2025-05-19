if [ $# -ne 2 ]; then
echo "Syntax is $0 <file> <word to delete>"
exit 1
fi

if grep -q "\b$2\b" "$1"  
then
echo "$2 deleted from $1 succesfully"
sed -i "/\b$2\b/d" "$1"
else
echo "error deleting $2 from $1"
fi

exit 0 
