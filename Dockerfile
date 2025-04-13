FROM python:3.9-slim

WORKDIR /app-container

COPY . /app-container/

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 5000

# Correct ENV format
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Use correct JSON array for CMD with properly quoted host:port
CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]
