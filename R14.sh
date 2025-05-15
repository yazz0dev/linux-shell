if [ $# -ne 2 ]; then
echo "Syntax is $0 <file1> <file2>"
exit 1
fi
if [ ! -f $1 ]; then
echo "$1 isnt existing or not and ordinary file"
exit 2
fi
if [ -f $2 ]; then
echo "Target file exists overWrite(y/n)?"
read ans
if [ $ans = "n" ]; then 
exit 3
fi
cp $1 $2
echo "file copied" 
fi
