FROM python:3.7.4-alpine

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN apk add gcc musl-dev && \
    pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
