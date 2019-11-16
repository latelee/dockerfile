FROM node:alpine

LABEL maintainer Late Lee(li@latelee.org)
# Create app directory
RUN mkdir -p /home/Service
WORKDIR /home/Service
 
# Bundle app source
COPY . /home/Service
#RUN npm install
 
CMD [ "npm", "start" ]
