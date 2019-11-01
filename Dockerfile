FROM alpine

ENV wstunnel_version=2.0
ARG wstunnel_url=https://github.com/erebe/wstunnel/releases/download/${wstunnel_version}/wstunnel_linux_x64
RUN set -eux \
  ; wget -q -O /usr/local/bin/wstunnel ${wstunnel_url} \
  ; chmod +x /usr/local/bin/wstunnel

ENTRYPOINT [ "/usr/local/bin/wstunnel" ]