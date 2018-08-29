FROM alpine:3.6

COPY git-clone.sh /
RUN apk add --update git openssh

RUN addgroup -g 1000 -S airflow && \
    adduser -u 1000 -S airflow -G airflow

ENTRYPOINT ["/git-clone.sh"]

