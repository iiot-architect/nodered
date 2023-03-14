FROM node:lts-alpine3.17
WORKDIR /opt/node
USER root
RUN npm install -g --unsafe-perm node-red
CMD node-red
EXPOSE 1880
