# Use the official Bun image as a parent image
FROM oven/bun:1

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and bun.lockb (if you have one)
COPY package.json ./
COPY bun.lockb ./

# Install dependencies
RUN bun install

# Copy the rest of your application's source code
COPY . .

# Build the application
RUN bun run build

# Expose the port your app runs on
EXPOSE 8080

# Run the application
CMD ["bun", "start"]