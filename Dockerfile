FROM --platform=linux/amd64 kong:2.8.1-alpine
LABEL fankehao fankehao@shuinfo.com

ENV KONG_PLUGINS_TAG "0.0.13"
ENV KONG_PLUGINS 'bundled, digiprime-jwt'

USER root

RUN apk add --no-cache --virtual .build-deps git make cmake build-base \
    && luarocks install --server=http://luarocks.org/manifests/shuinfo digiprime-jwt ${KONG_PLUGINS_TAG} \
    && apk del .build-deps
