if [ $# -gt 1 ]; then
echo "Syntax is $0 <filename>"
exit 0
fi

flag=0

if [ $# -eq 1 ]; then
flag=1
tt=`tty`
exec<$1
fi

while read line
do
nol=`expr $nol + 1`
set $line > /dev/null
nowd=`expr $nowd + $#`
done

echo "No.of words is $nowd and No.of lines are $nol"
if [ $flag -eq 1 ]; then
exec<$tt
fi
