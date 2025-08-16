# Stage 1: Build
FROM node:24 AS backend-builder

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN npm install

# Run tests (optional)
RUN npm run test

# Stage 2: Runtime
FROM node:21-slim

# Set working directory
WORKDIR /app

# Copy built files from builder stage
COPY --from=backend-builder /app .

COPY .env.docker .env
# Expose app port
EXPOSE 4000

# Start the app
CMD ["npm", "start"]

