FROM python:latest

WORKDIR /app

COPY main.py .
COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 13800

ENV ENV_VAR='value'

CMD ["python", "main.py"]