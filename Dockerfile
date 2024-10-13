#base image
FROM node:16-slim

#working directory
WORKDIR /app

#install requirements
COPY package*.json ./

#install dependencies 
RUN npm install

#Expose Port
EXPOSE 5000
#copy code into container
COPY . .

#RUN
CMD ["npm","start"]
