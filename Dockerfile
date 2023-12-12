FROM nginx:mainline-alpine-slim
EXPOSE 80
USER root

RUN apk update && apk add --no-cache supervisor wget unzip curl jq

# Default V2Ray version
ENV V2RAY_VERSION=v4.45.0

ENV UUID=default_uuid
ENV VMESS_WSPATH=/vmess
ENV VLESS_WSPATH=/vless

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir /etc/v2ray /usr/local/v2ray
COPY config.json /etc/v2ray/
COPY entrypoint.sh /usr/local/v2ray/

# Get the latest V2Ray version from GitHub releases if not provided
RUN V2RAY_VERSION=${V2RAY_VERSION:-$(curl -s https://api.github.com/repos/v2fly/v2ray-core/releases/latest | jq -r .tag_name)} && \
    wget -q -O /tmp/v2ray-linux-64.zip https://github.com/v2fly/v2ray-core/releases/download/${V2RAY_VERSION}/v2ray-linux-64.zip && \
    unzip -d /usr/local/v2ray /tmp/v2ray-linux-64.zip v2ray  && \
    wget -q -O /usr/local/v2ray/geosite.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat && \
    wget -q -O /usr/local/v2ray/geoip.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat && \
    chmod a+x /usr/local/v2ray/entrypoint.sh && \
    apk del wget unzip curl jq && \
    rm -rf /tmp/v2ray-linux-64.zip && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

ENTRYPOINT [ "/usr/local/v2ray/entrypoint.sh" ]
