FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1

RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

WORKDIR /django

COPY . /django

RUN pip install --no-cache-dir -r requirements.txt

# Run migrations (uncomment these lines if needed)
RUN python manage.py makemigrations
RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
