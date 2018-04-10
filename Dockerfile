FROM alpine:3.6

COPY git-clone.sh /
RUN apk add --update git openssh

RUN addgroup -g 1000 -S git && \
    adduser -u 1000 -S git -G git

ENTRYPOINT ["/git-clone.sh"]

