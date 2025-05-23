if [ $# -ne 2 ]
then
 echo "Syntax is <$0> <n> <r>"
 exit 1
fi

fact() {
  n=$1
  i=1
  p=1
  while [ $i -le $n ]
  do
    p=`expr $p \* $i`
    i=`expr $i + 1`
  done
  return $p 
}

n=$1
r=$2

fact $n
np=$? 

fact $r
rp=$?

fact `expr $n - $r`
nrp=$?

den=`expr $rp \* $nrp`
nCr=`expr $np / $den`

echo "$nC$r = $nCr"
