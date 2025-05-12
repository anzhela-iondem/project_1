# Use a base image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy only necessary files
COPY ./src/package.json ./

# Install dependencies
RUN npm install

# Copy app code
COPY ./src/app.js ./index.js

# Run your app
CMD ["node", "index.js"]
