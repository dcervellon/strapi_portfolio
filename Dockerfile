# Use the official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the Strapi app source code to the container
COPY . .

# Expose the port that Strapi will run on
EXPOSE 1337

# Define the command to run when the container starts
CMD ["npm", "start"]
