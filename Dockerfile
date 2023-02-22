FROM node:lts-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN npm install -g @commitlint/cli @commitlint/config-conventional

ENTRYPOINT [ "commitlint", "--edit" ]
