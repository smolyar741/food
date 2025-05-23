#!/bin/bash

# Путь к ngrok
NGROK_PATH="/opt/homebrew/bin/ngrok"

# Порт Live Server
PORT=5500

# Проверка, существует ли файл ngrok
if [ ! -f "$NGROK_PATH" ]; then
  echo "❌ Ошибка: не найден ngrok по пути $NGROK_PATH"
  echo "Проверь правильность пути."
  exit 1
fi

echo "✅ Запуск ngrok на http://localhost:$PORT ..."
echo "📡 Получи ссылку ниже:"
echo

"$NGROK_PATH" http $PORT
