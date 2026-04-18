# Base image
FROM node:18-alpine

# Set working directory di dalam container
WORKDIR /app

# Copy package.json dulu (biar cache-nya efisien)
COPY package.json .

# Install dependencies
RUN npm install

# Copy semua file app
COPY . .

# Expose port
EXPOSE 3000

# Command saat container jalan
CMD ["node", "app.js"]