FROM node:12.16.2-alpine

ENV AWSCLI_VERSION 1.18.39

# install aws-cli
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    && pip install awscli==$AWSCLI_VERSION --upgrade --user \
    && apk --purge -v del py-pip \
    && rm -rf /var/cache/apk/*
ENV PATH="/root/.local/bin/:${PATH}"

# install sentry-cli
RUN yarn global add @sentry/cli
