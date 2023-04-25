FROM node:14-alpine

# Create and set the working directory
WORKDIR /app
ENV SECRET_KEY="sk_test_51L5AsSSCC8JVWfvgxpyZvQyBRRkHmGBkdyIa94vPD3Zs71qbHGrnSPlrJOIWiR74fbcn1A85yESCFnrrp3aX0Oz900JaunHrhe"
ENV DOMAIN = "http://13.232.247.231"
# Copy the package.json and package-lock.json files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the client code
COPY client/ ./client/

# Copy the server code
COPY . .

# Expose the server port
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
