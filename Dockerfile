FROM node:16

# Set working directory inside the container
WORKDIR /app

# Copy package files first (helps Docker cache npm install)
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy rest of the app source code
COPY . .

# Expose port your app runs on
EXPOSE 5000

CMD ["npm", "start"]
