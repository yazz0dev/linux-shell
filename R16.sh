if [ $# -ne 3 ]
then
echo "Syntax error: <range start &  end> <file>"
fi
n1=$1
n2=$2
shift
shift
n3=`expr $n2 - $n1 + 1`
while [ $# -ne 0 ]
do
head -$n2 $1 | tail -$n3
shift
done
exit 0
