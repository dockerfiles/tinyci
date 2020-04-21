from vinkdong/alpine

RUN \
  apk add git curl 

ENV HELM_VERSION="v2.14.1"

WORKDIR /root

RUN \
  curl http://mirror.azk8s.cn/kubernetes/helm/helm-${HELM_VERSION}-linux-amd64.tar.gz -o helm.tag.gz && \
  tar -xzf helm.tag.gz &&\
  mv linux-amd64/helm /usr/local/bin/ && \
  rm -rf ./*

RUN \
  helm init --client-only --skip-refresh 