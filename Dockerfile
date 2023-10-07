# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Strapi dependencies
RUN npm install

# Copy the rest of your Strapi application code to the working directory
COPY . .

# Expose the port that Strapi will run on (por defecto es 1337)
EXPOSE 1337

# Start Strapi when the container runs
CMD ["npm", "start"]
