FROM python:3.10-alpine

WORKDIR /app

COPY . $WORKDIR

RUN pip install -r requirements.txt \
    && chmod +x /app/conatiner-entrypoint.sh

EXPOSE 8080

ENTRYPOINT [ "/bin/sh", "-c", "/app/conatiner-entrypoint.sh" ]