# FROM node:16-alpine

# WORKDIR /app

# ENV PORT=3000

# COPY ["package.json", "package-lock.json*", "./"]

# RUN npm install

# COPY . .

# CMD ["npm", "start"]




FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
EXPOSE 3000
CMD ["npm", "start"]