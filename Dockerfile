FROM centos:centos7

RUN apk add curl && \
  [ -d usr/local/bin ] || mkdir -p /usr/local/bin && \
  curl https://downloads.dcos.io/binaries/cli/linux/x86-64/dcos-1.13/dcos -o dcos && \
  mv dcos /usr/local/bin && \
  chmod +x /usr/local/bin/dcos
