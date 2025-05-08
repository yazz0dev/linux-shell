for file in * 
do
if [ -f file  ]; then
mv file $ps$file
fi
done
