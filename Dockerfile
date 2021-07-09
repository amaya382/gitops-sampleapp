FROM python:3.8-alpine

WORKDIR /opt/sampleapp
COPY . /opt/sampleapp

RUN apk add --no-cache --virtual .deps \
        gcc make musl-dev && \
    pip install responder && \
    apk del --purge .deps

CMD ["python", "main.py"]