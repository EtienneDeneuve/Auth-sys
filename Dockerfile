FROM node:16

WORKDIR /app 

COPY package*.json ./

RUN npm install 

RUN npm run build

COPY . .

RUN npx prisma generate

EXPOSE 3000  

CMD ["npm", "start"]