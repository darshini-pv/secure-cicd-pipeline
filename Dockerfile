
FROM python:3.11-slim

WORKDIR /app

COPY app/requirements.txt .

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir "wheel>=0.46.2" && \
    pip install --no-cache-dir -r requirements.txt && \
    pip show wheel

COPY app/ .

EXPOSE 5000

CMD ["python", "app.py"]
