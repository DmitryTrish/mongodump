FROM alpine:latest

RUN apk add --update --no-cache aws-cli mongodb-tools

ENV AWS_ACCESS_KEY_ID ""
ENV AWS_SECRET_ACCESS_KEY ""
ENV AWS_DEFAULT_REGION ""
ENV AWS_ENDPOINT_URL ""
ENV AWS_S3_BUCKET_NAME ""
ENV MONGO_URI ""

COPY entrypoint.sh /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

CMD /usr/local/bin/entrypoint