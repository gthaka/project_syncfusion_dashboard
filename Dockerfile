# from an image, node image (alpine linux dist)
FROM node:16.15.0-alpine

# set the working directory for instructions execution
WORKDIR /app

# install app dependencies
COPY package*.json ./

# run the instruction / command\
RUN npm i

RUN npm ci && npm cache clean --force 

# copy our application / program files
COPY . ./

# CMD node app.js
CMD npm start