FROM alpine:3.11

RUN apk update \
      && apk add docker \
      && mkdir /build-root

WORKDIR /build-root
ENV SOURCE_URL ""
ENV BRANCH "master"
ENV BULD_CONTEXT ""

CMD ["/bin/sh", "-c", "echo ${SOURCE_URL}#${BRANCH}:${BUILD_CONTEXT}"]
