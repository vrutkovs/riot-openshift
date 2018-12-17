FROM twalter/openshift-nginx:alpine

USER root

COPY riot.tar.gz /tmp/
RUN tar zxf /tmp/riot.tar.gz --strip 1 -C /usr/share/nginx/html && \
    ln -s /config/config.json /usr/share/nginx/html/config.json
