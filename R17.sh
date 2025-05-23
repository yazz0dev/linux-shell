if [ $# -ne 2 ]
then
 echo "Syntax is <$0> <n> <r>"
 exit 1
fi

fact () 
{
  n=$1
  i=1
  f=1
  while [ $i -le $n ]
  do
    f=`expr $f \* $i`
    i=`expr $i + 1`
  done
  return $f
}

fact $1
np=$? 
fact $2
rp=$?
fact `expr $1 - $2`
nrp=$?
den=`expr $rp \* $nrp`
ncr=`expr $np / $den`
echo "$1C$2 = $ncr"
