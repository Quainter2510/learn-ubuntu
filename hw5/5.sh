# Работа с файлами


## 1. Удаление всех системных файлов ... в корзину
alias trm='mv "$@" /trashfolder'


## 2. Просто бекап
cp -r projecta projectb /backupfolder


## 3. Из файла в файловую систему
mkdir -p $(cat "$@")


## 4. Раскидывание по директориям
mkdir javascript
mv "$@".js javascript
mkdir bash
mv "$@".sh bash


## 5. семи символьная символьная ссылка
ln -rs ??????? "$@"


## 6. Git 2.0
PYLOC="$(which "$@")"
ln -fs "$PYLOC" "$(dirname $PYLOC)"/python
