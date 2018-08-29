FROM alpine:3.6

COPY git-clone.sh /
RUN apk add --update git openssh

ENTRYPOINT ["/git-clone.sh"]
