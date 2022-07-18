FROM node:16

RUN  npm init surgio-store /surgio-folder

RUN  cd /surgio-folder && \
     npm install @khronosmoe/gateway@latest && \
     npm install @surgio/gateway-frontend@latest

RUN  cd /surgio-folder && \
     npm cache clean --force && \
     rm surgio.conf.js && rm -r provider template

COPY ./entrypoint.sh /usr/local/bin
RUN  chmod +x /usr/local/bin/entrypoint.sh 

EXPOSE 3000 3001
VOLUME ["/surgio-data"]
ENTRYPOINT ["entrypoint.sh"]
