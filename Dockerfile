FROM python:3.11-slim

WORKDIR /app

COPY app/requirements.txt .

RUN python -m pip install --no-cache-dir -r requirements.txt && \
    python -m pip uninstall -y setuptools wheel

COPY app/ .

EXPOSE 5000

CMD ["python", "app.py"]