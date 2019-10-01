FROM node:buster
# Create app directory
WORKDIR /app
# Install app dependencies
COPY ./ /app
RUN npm install
# For npm@5 or later, copy package-lock.json as well
# COPY package.json package-lock.json ./

EXPOSE 3000

CMD ["npm", "start"]

# docker container run --publish 3000:80  --name my_app_container  my-app