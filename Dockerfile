FROM node:lts-alpine3.17
WORKDIR /root/.node-red
USER root
RUN npm install -g --unsafe-perm node-red
RUN apk add bash postgresql-client
CMD node-red
EXPOSE 1880
