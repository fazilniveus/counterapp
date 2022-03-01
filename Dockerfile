FROM node:12.18.3  as build-stage

WORKDIR /App

COPY package*.json /App/
RUN npm install
 
 
COPY ./ /App/
WORKDIR /App
ENV PORT 5002
EXPOSE 5002
CMD [ "npm", "run","start" ]
