if [ $# -le 2 -o `expr $# % 2` -ne 0 ]; then
echo "wrong syntax"
exit 1
fi
while [ $# -ne 0 ]; 
do
cp $1 $2
shift
shift
done

