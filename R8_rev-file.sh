if [ $# -ne 1 ]; then
echo "Syntax is $0 <filename>"
exit 1
fi
set -xv
cp $1 file
l=`cat file | wc -l`
rm rfile
while [ $l -ge 1 ]
do
tail -n 1 file >> rfile
l=`expr $l - 1`
head -n $l file > temp
mv temp file
done
