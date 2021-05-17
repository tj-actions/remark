FROM alpine:3.13.5

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash npm

RUN npm install -g remark-cli

COPY entrypoint.sh /entrypoint.sh
COPY .remarkrc.json /.remarkrc.json

ENTRYPOINT ["/entrypoint.sh"]
