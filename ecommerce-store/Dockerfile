FROM node:18-alpine

# Create app directory, this is in our container/in our image
WORKDIR /usr/src/e-commerce-store

# Bundle app source
ADD ./ ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Build the Next.js app for production
RUN npm run build

# Start the Next.js app
CMD ["npm", "run", "start"]
