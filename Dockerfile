FROM node:18
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
#ENV PORT=3003
ENV MONGODB_URI=mongodb://mongo:27017/eventDB
EXPOSE 3003
CMD ["npm", "start"]
