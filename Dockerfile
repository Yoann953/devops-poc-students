FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install && npm install aws aws-sdk
COPY . .
ENV APP_PORT=80
EXPOSE 80
CMD ["npm", "start"]
