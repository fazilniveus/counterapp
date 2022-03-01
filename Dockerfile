FROM node:12.18.3  as builder

WORKDIR /App

COPY package*.json /App/
RUN npm install
 
 
COPY ./ /App/
RUN npm run build
ENV PORT 5002
EXPOSE 5002
CMD [ "npm", "run","start" ]
