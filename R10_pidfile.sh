for file in * 
do
if [ -f file  ]
mv file $ps$file
fi
done
