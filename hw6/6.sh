# Чтение и запись в файлы


## 1. Начало и конец
echo -e "HEAD:\n$(head "$@")\n====================\nTAIL:\n$(tail "$@")"


## 2. Не начало и не конец
head -n -5 "$@" | tail -n +6


## 3. Нужно больше less
wc -l $(find .) | less


## 4. Fast diff
diff $(ls *"$@"* | head -n 2)
