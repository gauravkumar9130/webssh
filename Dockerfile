FROM quay.io/gauravkumar9130/alpine:latest

RUN apk update && apk add --no-cache libressl-dev musl-dev libffi-dev gcc libc-dev make openssl-dev python3-dev py3-bcrypt py3-pynacl py3-cryptography py-pip && \
    pip install webssh && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

EXPOSE 8888

ENTRYPOINT ["wssh", "--address=0.0.0.0", "--port=8888"]
