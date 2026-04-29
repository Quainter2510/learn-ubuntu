#1
alias trm=mv $@ ~/.local/share/Trash

#2 
cp -vrp $@ /home/user/backup/

#3 
mkdir -pv $(cat mydirs.txt)

#4
mv $(ls *.js) javascript/
mv $(ls *.sh) bash/

#5
ln -s -t $@ $(ls ???????)

#6
sudo ln -s /usr/bin/python$@ /usr/bin/python