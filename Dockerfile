FROM node:12

WORKDIR /app

COPY package.json /app

# Install the dependencies, in the image, before run the app.
RUN npm install

COPY . /app

EXPOSE 80

# CMD just execute when the image is already created and the container is running.
CMD ["node", "server.js"]


