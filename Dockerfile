FROM docker:18.09.6-dind

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.14.2/bin/linux/amd64/kubectl -O /usr/local/bin/k
ubectl \
  && chmod a+x /usr/local/bin/kubectl

ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []
