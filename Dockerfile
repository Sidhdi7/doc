# Use Node.js base image
FROM node:18

# Set working directory in container
WORKDIR /usr/src/index

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose port used by the app
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
