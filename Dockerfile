FROM node:lts-alpine3.17
WORKDIR /root/.node-red
USER root
RUN npm install -g --unsafe-perm node-red
CMD node-red
EXPOSE 1880
