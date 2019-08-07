FROM alpine:edge
ARG S3_ARGS
RUN apk update
RUN apk upgrade
RUN apk add py-pip
RUN pip install s3cmd
CMD s3cmd $S3_ARGS
