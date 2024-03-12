# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install app dependencies
RUN npm install
#RUN npm run app

# Expose port 3000 to the outside world
EXPOSE 3000

# Define the command to run your app using CMD which defines your runtime
CMD ["node", "app.js"]
