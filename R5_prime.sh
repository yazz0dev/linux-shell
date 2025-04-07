if [ $# -ne 1 ]; then
echo "Syntax Error: $0 <number>"
else
if [ $1 -le 2 ]; then
echo "NOT Prime"
exit 1
fi
i=2
while [ $i -lt `expr $1 / 2` ]; do
i=`expr $i + 1`
if [ `expr $1 % $i` -eq 0 ]; then
echo "$1 is not a prime number" 
exit 0
fi
done
echo "$1 is a prime number"
fi
