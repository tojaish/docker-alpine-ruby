FROM alpine:edge

RUN apk --update add \
  ca-certificates \
  ruby \
  ruby-bundler \
  ruby-dev && \
  rm -fr /usr/share/ri

# Ensure we get v1.0.2h
RUN apk \
  --upgrade \
  --update-cache \
  --repository http://dl-cdn.alpinelinux.org/alpine/v3.3/main \
  add openssl

COPY files /

CMD ["/bin/sh"]
