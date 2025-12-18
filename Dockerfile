FROM node:18

# Create app directory
WORKDIR /app

# Install serve globally as root
RUN npm install -g serve

# Copy files
COPY . .

# Change ownership to non-root user
RUN chown -R node:node /app

# Switch to non-root user
USER node

# Expose port
EXPOSE 3000

# Run static server
CMD ["serve", ".", "-l", "3000"]
