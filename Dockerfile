FROM alpine:edge
RUN apk update
RUN apk upgrade
RUN apk add py-pip
RUN pip install s3cmd
CMD s3cmd $S3_ARGS
