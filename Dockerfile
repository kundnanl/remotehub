# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./ 
RUN npm install

# Copy project files
COPY . .

# Expose the application port
EXPOSE 3000

# Run the development server
CMD ["npm", "run", "dev"]
