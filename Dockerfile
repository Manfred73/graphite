FROM sitespeedio/graphite

RUN rm -v /etc/nginx/.htpasswd
RUN rm -v /opt/graphite/conf/storage-schemas.conf

COPY conf/.htpasswd /etc/nginx/.htpasswd
COPY conf/storage-schemas.conf /opt/graphite/conf/storage-schemas.conf

EXPOSE 80 8080 2003 
