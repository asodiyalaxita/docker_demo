# Use Node.js base image
FROM node:20

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Install nodemon globally for real-time updates
RUN npm install -g nodemon

# Expose the port the app runs on
EXPOSE 3000

# Run the app with nodemon for live updates
CMD ["npm", "run", "dev"]