# Use a base image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy only necessary files
COPY ./src/package.json ./src/package-lock.json ./

# Install dependencies
RUN npm install

# Copy app code
COPY ./src/app ./app

# Run your app
CMD ["node", "index.js"]
