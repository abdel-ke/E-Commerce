FROM node:18-alpine

# Create app directory, this is in our container/in our image
WORKDIR /usr/src/e-commerce-admin

# Bundle app source
ADD . .

# RUN npm install
# If you are building your code for production
# RUN npm ci --only=production
# Set the environment variable for Prisma to use the correct database
# ENV DATABASE_URL=mysql://root:pass123@mysql/ecommerce

RUN npx prisma generate
# RUN npx prisma db push
RUN chmod +x script.sh

RUN ./script.sh
# Build the Next.js app for production
RUN npm run build


# Start the Next.js app
CMD ["npm", "run", "start"]
