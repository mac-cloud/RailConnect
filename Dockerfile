FROM python:3.9-slim

WORKDIR /app-container

COPY . /app-container/

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 5000

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

CMD ["python", "manage.py", "runserver", 0.0.0:5000]