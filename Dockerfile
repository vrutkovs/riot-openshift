FROM twalter/openshift-nginx:alpine

ARG RIOT_VERSION

USER root

RUN apk add --no-cache --purge -U curl  && \
    rm -rf /var/cache/apk/*

RUN curl -L "https://github.com/vector-im/riot-web/releases/download/${RIOT_VERSION}/riot-${RIOT_VERSION}.tar.gz" | tar zxf - --strip 1 -C /usr/share/nginx/html && \
    ln -s /config/config.json /usr/share/nginx/html/config.json
