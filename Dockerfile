FROM twalter/openshift-nginx:alpine

ARG RIOT_VERSION

RUN set -ex ;\
    apk add --no-cache --purge -U curl ;\
    rm -rf /var/cache/apk/* ;\
    LATEST="https://github.com/vector-im/riot-web/releases/download/${RIOT_VERSION}/riot-${RIOT_VERSION}.tar.gz" ;\
    curl -L $LATEST | tar zxf - --strip 1 -C /usr/share/nginx/html ;\
    ln -s /config/config.json /usr/share/nginx/html/config.json
