FROM alpine:3.15.0

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash npm

RUN npm install -g remark-cli@10.0.1

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY .remarkrc.json /.remarkrc.json

ENTRYPOINT ["/entrypoint.sh"]
