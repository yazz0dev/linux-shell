r=`expr $# % 2`
if [ $r -ne 0 ]; then
echo "wrong syntax"
exit 1
fi
while [ $# -ne 0 ]; 
do
cp $1 $2
shift
shift
done

