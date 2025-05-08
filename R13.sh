if [ $# -le 2 ]; then
echo " Syntax is $0 <search term> <file1>...<filen>"
exit 1
fi

word=$1
shift
count=0
while [ $3 -ne 0 ]
do
for wd in `cat $1`
do 
if [ $wd -eq $word ]; then
count=`expr $count + 1`
fi
done
shift
done
echo "No.of occurences: $count"
