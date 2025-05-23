opt=0
while [ $opt -le 7 ]
do
echo "1. ordinary files \n2.Directory files \n3.special files \n4.files readable to ugo"
echo "5.files writable to ugo \n6.files executable to ugo \n7.files with rwx to owner \n8.exit"
echo "\nEnter your Option: "
read opt
case $opt in
1)
echo "\nORDINARY FILES"
for f in *
do
if [ -f $f ]
then
echo -n "$f "
fi
done
;;
2)
echo "\n DIRECTORY FILES"
for f in *
do
if [ -d $f ]
then
echo $f
fi
done
;;
3)
echo "\n SPECIAL FILES"
for f in *
do
if [ ! -d $f -a ! -f $f ]
then
echo $f
fi
done
;;
4)
echo "\n FILES READABLE TO UGO"
for f in *
do
if [ -f $f ]
then
u=`ls -l $f | cut -c 2-2`
g=`ls -l $f | cut -c 5-5`
o=`ls -l $f | cut -c 8-8`
if [ $u = "r" -a $g = "r" -a $o = "r" ]
then 
echo $f
fi
fi
done
;;
5)
echo "\nFILES WRITABLE TO UGO"
for f in *
do
if [ -f $f ] 
then
u=`ls -l $f | cut -c 3-3`
g=`ls -l $f | cut -c 6-6`
o=`ls -l $f | cut -c 9-9`
if [ $u = "w" -a $g = "w" -a $o = "w" ]
then 
echo $f
fi
fi
done
;;
6)
echo "\nFILES EXECUTABLE TO UGO"
for f in *
do
if [ -f $f ] 
then
u=`ls -l $f | cut -c 4-4`
g=`ls -l $f | cut -c 7-7`
o=`ls -l $f | cut -c 10-10`
if [ $u = "x" -a $g = "x" -a $o = "x" ]
then 
echo $f
fi
fi
done
;;
7)
echo "\n\nFILES RWX TO OWNER"
for f in *
do
if [ -f $f ]
then
rwx=`ls -l $f | cut -c 2-4`
if [ $rwx = "rwx" ]
then
echo $f
fi
fi
done
;;
8) exit 0
;;
esac
echo "\nPress enter to continue"
read x
clear
done
