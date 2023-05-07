FROM python:3.9-slim-buster
WORKDIR /app
COPY /requirements.txt /var/www/html
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
