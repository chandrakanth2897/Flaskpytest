FROM python:3.9-slim-buster

WORKDIR /app

COPY dockerfile ./
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "app.py" ]
