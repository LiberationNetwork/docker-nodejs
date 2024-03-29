FROM node:14.21.1-alpine3.16

RUN apk --update --no-cache add \
    musl-dev \
    gcc \
    python3 \
    cmd:pip3 \
    python3-dev \
    zip \
    jq \
    && pip3 install --no-cache-dir --upgrade pip awscli==1.18.13 aws-sam-cli==0.43.0 \
    && apk del \
    gcc \
    musl-dev \
    && rm -rf /var/cache/apk/* /root/.cache/pip/*