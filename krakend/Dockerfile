FROM devopsfaith/krakend:2.4.3

# Копируем конфигурационный файл
COPY krakend.json /etc/krakend/krakend.json

# Устанавливаем порт по умолчанию
ENV KRAKEND_PORT=8000

# Можно установить дополнительные плагины если нужно
# RUN krakend install --help