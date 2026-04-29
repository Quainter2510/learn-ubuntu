#1
FILE="$@"
echo "HEAD"
head $FILE -n 5
echo "=============="
echo "TAIL"
tail $FILE -n 5
#2
head $@ -n -5 | tail -n +5
#3 
wc -l $(find .) | less
#4
diff $(ls *$@*)