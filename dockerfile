# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy all source files
COPY . .

# Expose port
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]
