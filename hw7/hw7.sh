#1
$@ 2>/dev/null

#2 
$@ 2>&1 | tee out.log

#3 
$@ 2>tmp
tail tmp -n 20
rm tmp

#4
./suppress ls -tr | tail -n +31 | ./suppress xargs rm

#5
read -d '' q
echo $q > "$@"
echo $q

#6 heil
data=$(cat)
head -n 1 <<< $data
tail -n 1 <<< $data
#6 ampl diff
find . -type f | xargs wc -m | grep -v total | sort -hk 1 | ./heil | sed 's/^ *//' | cut -d ' ' -f 2 | xargs diff

#7
$@ | xclip -selection clipboard

#8
pip list --outdated | tail -n +3 | cut -f 1 -d ' ' 