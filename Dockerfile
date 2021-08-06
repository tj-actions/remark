FROM alpine:3.14.1

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash npm

RUN npm install -g remark-cli

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY .remarkrc.json /.remarkrc.json

ENTRYPOINT ["/entrypoint.sh"]
