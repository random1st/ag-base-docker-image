FROM python:3.7-alpine

ARG VERSION=unspecified


RUN apk add --no-cache  \
    jpeg-dev zlib-dev  \
    gcc musl-dev  postgresql-dev


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV TMPDIR /var/tmp

RUN pip install gunicorn==19.9.0
