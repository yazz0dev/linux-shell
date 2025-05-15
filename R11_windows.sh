echo " Directory of $(pwd)"
ls -lnA --time-style='+%m/%d/%Y %I:%M %p' | awk '
NR > 1 { 
    filename=$9; for(i=10;i<=NF;i++) filename=filename" "$i; 
    if [ substr($1,1,1) -eq "d") {
        echo "%s %s %s   <DIR>       %s\n", $6, $7, $8,    filename
    } else if (substr($1,1,1) -eq "-") {
        echo "%s %s %s %12d %s\n", $6, $7, $8, $5,   filename
    }
}
'
