FROM python:3.11-slim

WORKDIR /app

COPY app/requirements.txt .

RUN python -m pip install --no-cache-dir --upgrade \
    pip \
    setuptools==84.0.0 \
    wheel==0.48.0 \
    && python -m pip install --no-cache-dir Flask==3.1.1

COPY app/ .

EXPOSE 5000

CMD ["python", "app.py"]
