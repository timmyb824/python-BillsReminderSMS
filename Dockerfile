FROM python:3.11-buster

WORKDIR /scripts

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY bills_reminder_sms.py .

ENV PYTHONUNBUFFERED=1

CMD ["python", "bills_reminder_sms.py"]
