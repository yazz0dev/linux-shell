op=0
while [ op -ne 7 ]; do
clear
echo " ---------- "
read op
case $opt in 
1) for f in *
do
if [ -f $f ]
then
echo $f
fi
done 
;;
2) for f in *
do
if [ -d $f ]
then echA 
echo $f
fi done
;;
3)


