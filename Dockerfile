#base image
FROM node:18
#Setup work dictionary
WORKDIR /app
#Copy json package and install dependcies
COPY package*.json ./
RUN npm install
#Copy Source Code
COPY . .
#Expose Application Port
EXPOSE 5000
#Let roll
CMD [ "npm","start" ]