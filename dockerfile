FROM python:3.9-slim-buster

WORKDIR /app

COPY flasktest ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "app.py" ]
