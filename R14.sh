if [ ! -f $1 ]; then
exit 2
fi
if [ -f $2 ]; then
echo "Target file exists overWrite(y/n)?"
read ans
if[ $ans -eq "n" ]; then 
exit 3
fi
cp $1 $2
echo "file copied" 
fi
