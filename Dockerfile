FROM python:3.7-slim

WORKDIR /usr/src/
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python","app.py"]