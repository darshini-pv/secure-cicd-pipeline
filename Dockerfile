FROM python:3.11-slim

WORKDIR /app

COPY app/requirements.txt .

RUN python -m pip install --no-cache-dir --upgrade pip && \
    python -m pip install --no-cache-dir --force-reinstall wheel==0.46.2 setuptools==78.1.1 && \
    python -m pip install --no-cache-dir -r requirements.txt && \
    python -m pip show wheel setuptools

COPY app/ .

EXPOSE 5000

CMD ["python", "app.py"]
