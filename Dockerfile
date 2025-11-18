# Use official Node runtime
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app
COPY . .

# Expose the port Express listens on
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
