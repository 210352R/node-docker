# select docker image   -- select based image with reagrd your development environment
FROM node:15

#Set working directory---
WORKDIR /app 

#copy pacakage .json file to work directory
#COPY --> copy files from host machine to container
# . assume /app dir
COPY package.json .

#installing node  at build time-------------
#RUN --> willl execute any command  in a shell inside the container environment--------
RUN npm install

#Copy all files
COPY . ./

ENV PORT 3000

#Port setting
EXPOSE $PORT

#Command at run time
CMD ["npm", "run","dev"]

## ------------- SPECIAL --------------------

# each instruction iin docker file build a layer in container ----
# each one is stacked --- 


#to build docker image 
#docker build -t my_node_app .
#to run docker image        
#docker run -p 3000:3000 -it my_node_app

