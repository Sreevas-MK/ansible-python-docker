# Use Python base image

FROM python:3.11-alpine

RUN mkdir -p /var/flaskapp

WORKDIR /var/flaskapp

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
