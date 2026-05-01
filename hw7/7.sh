# Ввод, Вывод, конвейеры


## 1.1 Подавляющая обертка
"$@" 2> /dev/null

## 1.2 Чистое познание Linux
bash suppress whatis $(ls -A /usr/bin)


## 2.1 Обертка логирующая
"$@" 2>&1 | tee out.log

## 2.2 Обертка редиректа
bash outlog cat good.txt bad.txt


## 3. Обертка обрезки (последняя, больше не будет (в этой главе))
"$@" 2> temp.txt
tail -n20 < temp.txt
rm temp.txt


## 4. Свежие файлы
ls -t | tail -n +31 | bash suppress xargs rm --


## 5. Свой Tee
read -d '' input_text
echo $input_text > "$@"
echo $input_text


## 6. Амплитудный diff

### 6.1 Начало и конец в конвейере
read -d '' input_text
echo -e "$(echo "$input_text" | head -n1)\n$(echo "$input_text" | tail -n1)"

### 6.2 Непорседственно амплитудный diff
ls -p | grep -v / | xargs wc -m | sort -rnk 1 | tail -n +2 | rev | cut -d ' ' -f 1 | rev | bash heil | xargs diff


## 7. Буфер копи-пастинга
"$@" | xclip -selection clipboard


## 8. Ну почему pip не может обновить все пакеты? Ладно, теперь может.
pip list --disable-pip-version-check --outdated \
    | cut -d ' ' -f1 \
    | tail -n +3 \
    | xargs pip install --upgrade
