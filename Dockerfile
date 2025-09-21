# Use a small Node.js runtime base
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package files and install only production dependencies
COPY package*.json ./
RUN npm install --omit=dev

# Copy your source code
COPY src ./src

# Use non-root user for security
USER node

# Expose the app port
EXPOSE 3000

# Healthcheck (optional but good practice)
HEALTHCHECK CMD wget --quiet --spider http://localhost:3000/ping || exit 1

# Start the application
CMD ["node", "src/server.js"]


# docker build -t node-demo-app .
# docker run -p 3000:3000 node-demo-app