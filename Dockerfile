FROM golang:1.11
EXPOSE 8011
COPY ./bin/hello-server /usr/local/bin/
CMD ["hello-server"]
