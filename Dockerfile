FROM node:12.2.0-alpine
WORKDIR /app
COPY . .
RUN npm install --registry=https://registry.npmjs.org/
RUN npm install
RUN npm audit --fix
EXPOSE 8000
CMD ["npm","app.js"]