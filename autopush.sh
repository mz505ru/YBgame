#!/bin/bash

# Переходим в папку репозитория
cd /media/mz505ru/popa/github

# Получаем свежие изменения с сервера (чтобы избежать конфликтов)
echo "Получаем изменения с GitHub..."
git pull origin main

# Добавляем все изменения
echo "Добавляем файлы..."
git add .

# Создаем коммит с временной меткой
echo "Создаем коммит..."
git commit -m "Auto-sync: $(date +"%Y-%m-%d %H:%M:%S")" || true

# Отправляем изменения
echo "Отправляем на GitHub..."
git push origin main

# Уведомление об успехе
notify-send "GitHub AutoPush" "Репозиторий успешно синхронизирован! ✅" -t 3000 -i dialog-information

echo "Синхронизация завершена!"
