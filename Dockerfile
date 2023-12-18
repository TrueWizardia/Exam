FROM python:3.11

RUN mkdir /app
WORKDIR /app

# Копируем зависимости
COPY requirements.txt /app

# Устанавливаем зависимости
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Копируем файлы приложения в контейнер
COPY . /app

# Экспортируем порт, на котором будет работать приложение
ENV POST 8080

# Команда для запуска приложения
CMD ["python", "app.py"]
