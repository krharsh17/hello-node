# Use official Node.js LTS image
FROM node:24-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy app source
COPY index.js ./

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
