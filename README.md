Запуск приложения
docker pull kirkoz7913/flask-app
docker build -t kirkoz7913/flask-app .
docker run -p 127.0.0.1:8080:8080 kirkoz7913/flask-app
