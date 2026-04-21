#Fetching the base image for NodeJS
FROM node:18

#Creating a dir for keeping the code and req. files
WORKDIR /app

#Copy everything from the source (Host) to the destination(container)

COPY . .

#Install packages
RUN npm install

#Expose the port
EXPOSE 5173

#Server the application
CMD ["npm", "run", "dev"]


