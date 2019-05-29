FROM alpine:3.9.3

ADD assets/check.sh /opt/resource/check
ADD assets/in.sh /opt/resource/in
ADD assets/out.sh /opt/resource/out

RUN adduser -H -D -g empty empty \
  && chown -R empty /opt/resource \
  && chmod +x /opt/resource/*
USER empty
