# Specify base image
FROM node:alpine

# Application directory
WORKDIR /app

# Copy ./package.json into the container
COPY ./package.json ./

# Install dependencies
RUN npm install

# Copy ./ into the container
COPY ./ ./

# Start
CMD ["npm", "start"]
