# Use official Node image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project
COPY . .

# Expose port if needed (remove if not a server)
EXPOSE 3000

# Start the app from src folder
CMD ["node", "src/app.js"]
