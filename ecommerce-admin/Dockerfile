FROM node:18-alpine

WORKDIR /admin

COPY package*.json .
RUN npm install

COPY prisma .
RUN npx prisma generate

COPY . .

# RUN npx prisma db push

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
