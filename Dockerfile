# Use a base image
 FROM node:latest 
#Set the working directory
WORKDIR /app 
#Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./ 
#Install dependencies
RUN npm install 
#Copy all other source code to the working directory
COPY . . 
#Expose the port your app runs on
EXPOSE 8080 
#Command to start your Node.js app
CMD ["node", "server.js"]
